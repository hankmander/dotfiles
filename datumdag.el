(defun datum-dag()
  "Print date and day."
  (interactive) (insert (format-time-string "** %d/%m %a")))
