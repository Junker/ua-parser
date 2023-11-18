(ql:quickload "cl-yaml")
(ql:quickload "dexador")
(ql:quickload "alexandria")



(defun parse-list (lst)
  (mapcar (lambda (hash)
            (uiop:while-collecting (%add)
              (maphash (lambda (k v)
                         (%add (intern (substitute #\- #\_ (string-upcase k))
                                       :keyword))
                         (%add v))
                       hash)))
          lst))

(defun wrap-list (lst var)
  `(defvar ,var (quote ,(parse-list lst))))

(defun parse ()
  (let* ((yaml (dex:get "https://raw.githubusercontent.com/ua-parser/uap-core/master/regexes.yaml" :force-string t))
         (h (yaml:parse yaml))
         (device-parsers (gethash "device_parsers" h))
         (os-parsers (gethash "os_parsers" h))
         (user-agent-parsers (gethash "user_agent_parsers" h)))
    (with-open-file (stream "/tmp/regexes.lisp"
                            :direction :output
                            :if-exists :supersede
                            :if-does-not-exist :create)
      (pprint '(in-package :ua-parser) stream)
      (pprint (wrap-list os-parsers '*os-regexes*)
              stream)
      (pprint (wrap-list device-parsers '*device-regexes*)
              stream)
      (pprint (wrap-list user-agent-parsers '*user-agent-regexes*)
              stream))))
