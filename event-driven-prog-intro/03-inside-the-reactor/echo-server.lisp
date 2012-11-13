(defpackage :edp-intro
  (:use :common-lisp)
  (:export :main))

(in-package :edp-intro)

(defun main ()
  (loop
    (let ((data (read-char *standard-input* nil)))
      (write-char data *standard-output*)
      ;(if (eq data '#\Newline)
      ;    (return)))))
      )))
