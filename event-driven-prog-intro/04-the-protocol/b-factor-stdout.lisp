(defpackage :edp-intro
  (:use :common-lisp)
  (:export :main
           :echo))

(in-package :edp-intro)

(defun echo (stdout, data)
  (write-char data stdout))

(defun main ()
  (loop
    (let ((data (read-char *standard-input* nil)))
      (echo *standard-output* data)
      )))
