(defpackage #:fnl
  (:use #:cl #:cl-fnl)
  (:export
   #:+noise-opensimplex2+
   #:+noise-opensimplex2s+
   #:+noise-perlin+
   #:+noise-cellular+
   #:+noise-value+
   #:+noise-value-cubic+
   #:defnoise
   #:get-2d
   #:get-3d))

(in-package #:fnl)

(defconstant +noise-opensimplex2+ +fnl-noise-opensimplex2+)
(defconstant +noise-opensimplex2s+ +fnl-noise-opensimplex2s+)
(defconstant +noise-perlin+ +fnl-noise-perlin+)
(defconstant +noise-cellular+ +fnl-noise-cellular+)
(defconstant +noise-value+ +fnl-noise-value+)
(defconstant +noise-value-cubic+ +fnl-noise-value-cubic+)

(defmacro defnoise (symbol noise-type)
  `(progn
     (defparameter ,symbol (autowrap:alloc 'fnl-state))
     (fnl-create-state ,symbol)
     (setf (fnl-state.noise-type ,symbol) ,noise-type)))

(defun get-2d (noise x y)
  (fnl-get-noise2d noise x y))

(defun get-3d (noise x y z)
  (fnl-get-noise3d noise x y z))
