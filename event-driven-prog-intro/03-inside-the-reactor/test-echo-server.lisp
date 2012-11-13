;;; This file can simply be loaded from the sbcl interpreter like so:
;;;
;;; * (load "test-echo-server.lisp")
;;;
(ql:quickload "xlunit")

(load "echo-server.lisp")

(defpackage :edp-intro-tests
  (:use :cl :xlunit :edp-intro))

(in-package :edp-intro-tests)

(defclass echo-test-case (test-case)
  ())

(def-test-method test-main ((test echo-test-case))
  ())
