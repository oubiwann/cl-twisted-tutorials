(defpackage :edp-intro
  (:use :common-lisp)
  (:export :main
           :make-echoer))

(in-package :edp-intro)

(defun make-echoer ()
  (let ((stdout nil))
    (lambda (operation &rest args)
      (ecase operation
        (make-connection
          (setq stdout (car args)))
        (data-received
          (write-char (car args) stdout))))))

(defun main ()
  (let ((echoer (make-echoer)))
    (funcall echoer 'make-connection *standard-output*)
    (loop
      (let ((data (read-char *standard-input* nil)))
        (funcall echoer 'data-received data)))))
