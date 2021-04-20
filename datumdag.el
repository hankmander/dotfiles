;;; Datumdag --- insert specifically formatted timestamp
;; Author: hanktard

;;; Code:

(defun get-stars()
  "Print correct number of stars based on org level."
  (insert
   (make-string
    (or
     (org-element-property :level (org-element-at-point))
     2
     )
    ?* )
   )
  )

(defun datum-dag()
  "Print date and day."
  (interactive)
  (setq datum (format-time-string (concat (get-stars) " %d/%m %A")))
  (setq datum (replace-regexp-in-string "Monday" "Måndag" datum))
  (setq datum (replace-regexp-in-string "Tuesday" "Tisdag" datum))
  (setq datum (replace-regexp-in-string "Wednesday" "Onsdag" datum))
  (setq datum (replace-regexp-in-string "Thursday" "Torsdag" datum))
  (setq datum (replace-regexp-in-string "Friday" "Fredag" datum))
  (setq datum (replace-regexp-in-string "Saturday" "Lördag" datum))
  (setq datum (replace-regexp-in-string "Sunday" "Söndag" datum))
  (insert datum)
  (org-clock-in)
  )

;;; Commentary:
;; Insert timestamp formatted to fit an org list.

;;; datumdag.el ends here
