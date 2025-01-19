(defpackage #:cl-fnl
  (:use #:cl #:autowrap))

(in-package #:cl-fnl)

(autowrap:c-include '(cl-fnl spec "FastNoiseLite.h")
                    :spec-path '(cl-fnl spec)
                    :exclude-sources ("/usr/include"))
