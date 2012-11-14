(defpackage :edp-intro
  (:use :common-lisp)
  (:export :main
           :make-echoer
           :make-connection
           :data-received))

(in-package :edp-intro)

(defun make-echoer ()
  (let ((stdout nil))
    (lambda (operation &rest args)
      (ecase operation
        (make-connection
          (setq stdout (car args)))
        (data-received
          (write-char (car args) stdout))))))

;; We can improve the API a little bit by hiding the funcalls in the following
;; functions.
(defun make-connection (object &rest args)
  (funcall object 'make-connection (car args)))

(defun data-received (object &rest args)
  (funcall object 'data-received (car args)))

(defun main ()
  (let ((echoer (make-echoer)))
    (make-connection echoer *standard-output*)
    (loop
      (let ((data (read-char *standard-input* nil)))
        (data-received echoer data)))))
