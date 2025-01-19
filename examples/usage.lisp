(defpackage #:cl-fnl/examples
  (:use #:cl))

(in-package #:cl-fnl/examples)

(cffi:load-foreign-library "/path/to/libFastNoiseLite.so")




;; With helpers

(fnl:defnoise simplex fnl:+noise-opensimplex2+)
(fnl:get-3d simplex 1.0 2.0 3.0)




;; with autowrap:with-alloc

(autowrap:with-alloc (n 'cl-fnl:fnl-state)
  (cl-fnl:fnl-create-state n)
  (setf (cl-fnl:fnl-state.noise-type n)
        cl-fnl:+fnl-noise-opensimplex2+)
  (cl-fnl:fnl-get-noise3d n 1.0 2.0 3.0))




;; With autowrap:aloc

(defvar *noise-gen* (autowrap:alloc 'cl-fnl:fnl-state))
(cl-fnl:fnl-create-state *noise-gen*)
(setf (cl-fnl:fnl-state.noise-type *noise-gen*)
      cl-fnl:+fnl-noise-opensimplex2+)
(cl-fnl:fnl-get-noise3d *noise-gen* 1.0 2.0 3.0)
