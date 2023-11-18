(defsystem "ua-parser"
  :version "0.1.0"
  :author "Dmitrii Kosenkov"
  :license "MIT"
  :depends-on ("cl-ppcre" "alexandria" "iterate")
  :homepage "https://github.com/Junker/ua-parser"
  :source-control (:git "https://github.com/Junker/ua-parser.git")
  :description "User Agent Parser"
  :serial t
  :components ((:file "package")
               (:file "regexes")
               (:file "ua-parser")))
