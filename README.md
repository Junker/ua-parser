# UA-Parser

User Agent Parser for Common Lisp.

## Installation

This system can be installed from [UltraLisp](https://ultralisp.org/) like this:

```common-lisp
(ql-dist:install-dist "http://dist.ultralisp.org/"
                      :prompt nil)
(ql:quickload "ua-parser")
```

## Usage

```common-lisp
(defvar *ua* "Mozilla/5.0 (Linux; Android 13; Pixel 6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Mobile Safari/537.36")
;; *UA*

(ua-parser:parse *ua*)
;; (:UA (:FAMILY "Chrome Mobile" :MAJOR "112" :MINOR "0" :PATCH "0") 
;;  :OS (:FAMILY "Android" :MAJOR "13" :MINOR NIL :PATCH NIL) 
;;  :DEVICE (:FAMILY "Pixel 6" :BRAND "Google" :MODEL "Pixel 6"))

(ua-parser:os-parse *ua*)
;; (:FAMILY "Android" :MAJOR "13" :MINOR NIL :PATCH NIL)

(ua-parser:family-parse *ua*)
;; (:FAMILY "Chrome Mobile" :MAJOR "112" :MINOR "0" :PATCH "0")

(ua-parser:device-parse *ua*)
;; (:FAMILY "Pixel 6" :BRAND "Google" :MODEL "Pixel 6")


```

## Credits

Using regexp list from https://github.com/ua-parser/uap-core
