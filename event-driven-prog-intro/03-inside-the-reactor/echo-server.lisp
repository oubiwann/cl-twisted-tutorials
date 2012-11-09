(defun main ()
  (loop
    (setq data (read-byte *standard-input* nil))
    (if (eql data nil)
        (return))))
