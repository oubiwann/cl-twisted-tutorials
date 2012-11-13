(defun main ()
  (loop
    (let ((data (read-char *standard-input* nil)))
      (write-char data *standard-output*)
      ;(if (eq data '#\Newline)
      ;    (return)))))
      )))
