;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)

;; hanktards små hack
;; key bindings
(global-set-key (kbd "<C-tab>") 'ibuffer)
(global-set-key (kbd "<backtab>") (kbd "C-u -2 C-x TAB") )
(global-set-key (kbd "s-d") (kbd "C-x d RET") )
(global-set-key (kbd "C-c C-c") 'comment-or-uncomment-region )
(global-set-key (kbd "C-<") 'ag )
(global-set-key (kbd "C-z") "function(){}")
(global-set-key (kbd "<f2>") 'dabbrev-expand)
(global-set-key (kbd "C-q") 'yank)
(global-set-key (kbd "C-x C-a") 'projectile-find-file)
(global-set-key (kbd "C-x C-g") 'magit-status)
(global-set-key (kbd "C-x M-g") 'magit-dispatch-popup)

(toggle-frame-fullscreen)

(setq x-select-enable-clipboard t)
(remove-hook 'prog-mode-hook 'esk-turn-on-hl-line-mode)
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'fringe-mode) (fringe-mode 4))

(set-default-font "Inconsolata Medium")

(winner-mode)
(windmove-default-keybindings 'super)

(set-face-attribute 'default nil :height 160)

;; Indent 2 spaces in javascript-mode
(setq js-indent-level 8)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("8db4b03b9ae654d4a57804286eb3e332725c84d7cdab38463cb6b97d5762ad26" "b571f92c9bfaf4a28cb64ae4b4cdbda95241cd62cf07d942be44dc8f46c491f4" "938d8c186c4cb9ec4a8d8bc159285e0d0f07bad46edf20aa469a89d0d2a586ea" "67e998c3c23fe24ed0fb92b9de75011b92f35d3e89344157ae0d544d50a63a72" "98cc377af705c0f2133bb6d340bf0becd08944a588804ee655809da5d8140de6" "b9cbfb43711effa2e0a7fbc99d5e7522d8d8c1c151a3194a4b176ec17c9a8215" "ed8cf6d52a2ba9ed7a29a8aac81d83c362a9b62f48b558932a77130163fe9972" default)))
 '(js-indent-level 8)
 '(js2-basic-offset 8)
 '(js2-bounce-indent-p t)
 '(package-selected-packages
   (quote
    (ample-theme anti-zenburn-theme color-theme-solarized hc-zenburn-theme material-theme moe-theme molokai-theme zenburn-theme gotham-theme highlight-indent-guides rainbow-delimiters rainbow-mode magit csv auto-compile ripgrep smart-tabs-mode goto-last-change web-mode starter-kit-eshell starter-kit-bindings slime scss-mode php-mode org markdown-mode js2-mode find-file-in-repository better-defaults auto-complete))))

(setq-default indent-tabs-mode t)
;; Disable SCSS auto compile

(setq scss-compile-at-save nil)

;; setup files ending in “.html” to open in Web mode
(add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))
;; js2-mode instead of js-mode
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

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

(setq ido-max-directory-size "No limit")
(smart-tabs-insinuate 'javascript)

;; start Ido-mode at boot.
(ido-mode 1)

(load-theme 'zenburn)
(set-background-color "black")

(add-hook 'js2-mode-hook 'highlight-indent-guides-mode)
(add-hook 'scss-mode-hook 'rainbow-mode)
(add-hook 'js2-mode-hook 'rainbow-delimiters-mode)
