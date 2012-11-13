(defpackage :edp-intro
  (:use :common-lisp)
  (:export :main
           :echo))

(in-package :edp-intro)

(defun echo (data)
  (write-char data *standard-output*))

(defun main ()
  (loop
    (let ((data (read-char *standard-input* nil)))
      (echo data)
      )))
