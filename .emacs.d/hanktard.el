;;hanktards små hack

(global-set-key (kbd "<C-tab>") 'ibuffer)
(global-set-key (kbd "<backtab>") (kbd "C-u -2 C-x TAB") )
(global-set-key (kbd "s-d") (kbd "C-x d RET") )
(global-set-key (kbd "C-c C-c") 'comment-or-uncomment-region )

(setq x-select-enable-clipboard t)
(remove-hook 'prog-mode-hook 'esk-turn-on-hl-line-mode)
(global-set-key (kbd "C-z") 'nil)
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'fringe-mode) (fringe-mode 4))

(set-foreground-color "white")
(set-background-color "black")

(winner-mode)
(windmove-default-keybindings 'super)

(defun coffee-custom ()
  "coffee-mode-hook"
  (set (make-local-variable 'tab-width) 2))

(add-hook 'coffee-mode-hook
  '(lambda() (coffee-custom)))

(set-face-attribute 'default nil :height 110)
