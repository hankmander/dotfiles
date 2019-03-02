;;; Datumdag --- insert specifically formatted timestamp
;; Author: hanktard

;;; Code:

(defun datum-dag()
  "Print date and day."
  (interactive)
  (setq datum (format-time-string "** %d/%m %A"))
  (setq datum (replace-regexp-in-string "0\d*" "" datum))
  (setq datum (replace-regexp-in-string "Monday" "Måndag" datum))
  (setq datum (replace-regexp-in-string "Tuesday" "Tisdag" datum))
  (setq datum (replace-regexp-in-string "Wednesday" "Onsdag" datum))
  (setq datum (replace-regexp-in-string "Thursday" "Torsdag" datum))
  (setq datum (replace-regexp-in-string "Friday" "Fredag" datum))
  (setq datum (replace-regexp-in-string "Saturday" "Lördag" datum))
  (setq datum (replace-regexp-in-string "Sunday" "Söndag" datum))
  (insert datum))

;;; Commentary:
;; Insert timestamp formatted to fit an org list.

;;; datumdag.el ends here
