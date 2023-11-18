(in-package #:ua-parser)

;; compile regexes
(flet ((%compile-regex-list (regex-list)
         (mapcar #'(lambda (l)
                     (setf (getf l :regex)
                           (ppcre:create-scanner (getf l :regex)
                                                 :case-insensitive-mode (equal (getf l :regex-flag) "i")))
                     l)
                 regex-list)))
  (setf *os-regexes* (%compile-regex-list *os-regexes*))
  (setf *user-agent-regexes* (%compile-regex-list *user-agent-regexes*))
  (setf *device-regexes* (%compile-regex-list *device-regexes*)))


(defun replace-placeholders (replacement matches match-pos)
  (when-let ((str (or replacement (ignore-errors (aref matches match-pos)))))
    (when replacement
      (iter (for i from 1 to (length matches))
        (setf str (ppcre:regex-replace-all (format nil "\\$~D" i) str (aref matches (1- i))
                                           :simple-calls t))))
    str))

(defun find-rgx (ua items)
  (iter (for item in items)
    (when-let ((matches (nth-value 1 (ppcre:scan-to-strings (getf item :regex) ua))))
      (leave (values item matches)))))

;; PUBLIC

(defun os-parse (ua)
  (multiple-value-bind (item matches)
      (find-rgx ua *os-regexes*)
    (list :family (replace-placeholders (getf item :os-replacement) matches 0)
          :major (replace-placeholders (getf item :os-v1-replacement) matches 1)
          :minor (replace-placeholders (getf item :os-v2-replacement) matches 2)
          :patch (replace-placeholders (getf item :os-v3-replacement) matches 3))))

(defun family-parse (ua)
  (multiple-value-bind (item matches)
      (find-rgx ua *user-agent-regexes*)
    (list :family (replace-placeholders (getf item :family-replacement) matches 0)
          :major (replace-placeholders (getf item :v1-replacement) matches 1)
          :minor (replace-placeholders (getf item :v2-replacement) matches 2)
          :patch (replace-placeholders (getf item :v3-replacement) matches 2))))

(defun device-parse (ua)
  (multiple-value-bind (item matches)
      (find-rgx ua *device-regexes*)
    (list :family (replace-placeholders (getf item :device-replacement) matches 0)
          :brand (replace-placeholders (getf item :brand-replacement) matches 0)
          :model (replace-placeholders (or (getf item :model-replacement) "Other") matches 1))))

(defun parse (ua)
  (declare (type string ua))
  (list :ua (family-parse ua)
        :os (os-parse ua)
        :device (device-parse ua)))
