(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)

(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

;; Add in your own as you wish:
(defvar my-packages '(better-defaults jade-mode sws-mode stylus-mode markdown-mode ag web-mode find-file-in-git-repo)
  "A list of packages to ensure are installed at launch.")

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

(require 'jade-mode)
(require 'sws-mode)
(require 'stylus-mode)

;; hanktards små hack
;; key bindings
(global-set-key (kbd "<C-tab>") 'ibuffer)
(global-set-key (kbd "<backtab>") (kbd "C-u -2 C-x TAB") )
(global-set-key (kbd "s-d") (kbd "C-x d RET") )
(global-set-key (kbd "C-c C-c") 'comment-or-uncomment-region )
(global-set-key (kbd "C-<") 'rg )
(global-set-key (kbd "C-z") "function(){}")
(global-set-key (kbd "<f2>") 'dabbrev-expand)
(global-set-key (kbd "C-q") 'yank)
(global-set-key (kbd "C-x f") 'find-file-in-repository)
(global-set-key (kbd "C-x C-g") 'magit-status)
(global-set-key (kbd "C-x M-g") 'magit-dispatch-popup)

(toggle-frame-fullscreen)

(setq x-select-enable-clipboard t)
(remove-hook 'prog-mode-hook 'esk-turn-on-hl-line-mode)
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'fringe-mode) (fringe-mode 4))

(set-foreground-color "white")
(set-background-color "black")

(set-default-font "Inconsolata Medium")

(winner-mode)
(windmove-default-keybindings 'super)

(defun coffee-custom ()
  "coffee-mode-hook"
  (set (make-local-variable 'tab-width) 2))

(add-hook 'coffee-mode-hook
  '(lambda() (coffee-custom)))

(set-face-attribute 'default nil :height 160)

;; Indent 2 spaces in javascript-mode
(setq js-indent-level 8)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(js2-basic-offset 8)
 '(js2-bounce-indent-p t)
 '(package-selected-packages
   (quote
    (ag rg goto-last-change cider clojure-mode web-mode stylus-mode starter-kit-eshell starter-kit-bindings slime scss-mode php-mode org markdown-mode js2-mode jade-mode find-file-in-repository find-file-in-git-repo better-defaults auto-complete))))

(setq-default indent-tabs-mode t)
;; Disable SCSS auto compile

(setq scss-compile-at-save nil)

;; setup files ending in “.html” to open in Web mode
(add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))

;; Ido M-x mode
(global-set-key
 "\M-x"
 (lambda ()
   (interactive)
   (call-interactively
    (intern
     (ido-completing-read
      "M-x "
      (all-completions "" obarray 'commandp))))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(setq ido-max-directory-size 1000000)
