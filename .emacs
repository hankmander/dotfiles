;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)

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
 '(ansi-color-names-vector
   ["#3F3F3F" "#CC9393" "#7F9F7F" "#F0DFAF" "#8CD0D3" "#DC8CC3" "#93E0E3" "#DCDCCC"])
 '(custom-safe-themes
   (quote
    ("599f1561d84229e02807c952919cd9b0fbaa97ace123851df84806b067666332" "2022c5a92bbc261e045ec053aa466705999863f14b84c012a43f55a95bf9feb8" "5e52ce58f51827619d27131be3e3936593c9c7f9f9f9d6b33227be6331bf9881" "2a739405edf418b8581dcd176aaf695d319f99e3488224a3c495cb0f9fd814e3" "cdfc5c44f19211cfff5994221078d7d5549eeb9feda4f595a2fd8ca40467776c" "8db4b03b9ae654d4a57804286eb3e332725c84d7cdab38463cb6b97d5762ad26" "b571f92c9bfaf4a28cb64ae4b4cdbda95241cd62cf07d942be44dc8f46c491f4" "938d8c186c4cb9ec4a8d8bc159285e0d0f07bad46edf20aa469a89d0d2a586ea" "67e998c3c23fe24ed0fb92b9de75011b92f35d3e89344157ae0d544d50a63a72" "98cc377af705c0f2133bb6d340bf0becd08944a588804ee655809da5d8140de6" "b9cbfb43711effa2e0a7fbc99d5e7522d8d8c1c151a3194a4b176ec17c9a8215" "ed8cf6d52a2ba9ed7a29a8aac81d83c362a9b62f48b558932a77130163fe9972" default)))
 '(fci-rule-color "#383838")
 '(js-indent-level 8 t)
 '(js2-basic-offset 8)
 '(js2-bounce-indent-p t)
 '(nrepl-message-colors
   (quote
    ("#CC9393" "#DFAF8F" "#F0DFAF" "#7F9F7F" "#BFEBBF" "#93E0E3" "#94BFF3" "#DC8CC3")))
 '(package-selected-packages
   (quote
    (ac-js2 json-mode csv-mode ag ibuffer-projectile projectile ample-theme anti-zenburn-theme color-theme-solarized hc-zenburn-theme material-theme moe-theme molokai-theme zenburn-theme gotham-theme highlight-indent-guides rainbow-delimiters rainbow-mode magit csv auto-compile smart-tabs-mode goto-last-change web-mode starter-kit-eshell starter-kit-bindings slime scss-mode org markdown-mode js2-mode find-file-in-repository better-defaults auto-complete)))
 '(pdf-view-midnight-colors (quote ("#DCDCCC" . "#383838")))
 '(vc-annotate-background "#2B2B2B")
 '(vc-annotate-color-map
   (quote
    ((20 . "#BC8383")
     (40 . "#CC9393")
     (60 . "#DFAF8F")
     (80 . "#D0BF8F")
     (100 . "#E0CF9F")
     (120 . "#F0DFAF")
     (140 . "#5F7F5F")
     (160 . "#7F9F7F")
     (180 . "#8FB28F")
     (200 . "#9FC59F")
     (220 . "#AFD8AF")
     (240 . "#BFEBBF")
     (260 . "#93E0E3")
     (280 . "#6CA0A3")
     (300 . "#7CB8BB")
     (320 . "#8CD0D3")
     (340 . "#94BFF3")
     (360 . "#DC8CC3"))))
 '(vc-annotate-very-old-color "#DC8CC3"))

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

;; start Ido-mode & projectile at boot.
(ido-mode 1)
(projectile-mode 1)

(load-theme 'zenburn)
(set-background-color "black")

(add-hook 'js2-mode-hook 'highlight-indent-guides-mode)
(add-hook 'scss-mode-hook 'rainbow-mode)
(add-hook 'js2-mode-hook 'rainbow-delimiters-mode)
