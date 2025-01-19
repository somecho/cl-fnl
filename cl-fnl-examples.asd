(asdf:defsystem #:cl-fnl-examples
  :description "Examples for FastNoiseLite bindings"
  :author "Somē Cho <itssomicho@gmail.com>"
  :license  "MIT"
  :depends-on (#:cffi
               #:cl-fnl)
  :pathname "examples"
  :components ((:file "usage")))
