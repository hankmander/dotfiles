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
(global-set-key (kbd "C-§") 'helm-mini)
(global-set-key (kbd "<C-tab>") 'helm-mini)
(global-set-key (kbd "<backtab>") (kbd "C-u -2 C-x TAB") )
(global-set-key (kbd "s-d") (kbd "C-x d RET") )
(global-set-key (kbd "C-c C-c") 'comment-or-uncomment-region )
(global-set-key (kbd "C-<") 'helm-projectile-rg )
(global-set-key (kbd "C-z") 'kill-ring-save )
(global-set-key (kbd "C-y") 'yank )
(global-set-key (kbd "<f2>") 'dabbrev-expand)
(global-set-key (kbd "C-x C-f") #'helm-find-files)
(global-set-key (kbd "C-x C-a") 'helm-projectile)
(global-set-key (kbd "C-x C-g") 'magit-status)
(global-set-key (kbd "C-x M-g") 'magit-dispatch-popup)
(global-set-key (kbd "C-c c") 'org-capture)
(global-set-key (kbd "s-e") 'next-error)
(global-set-key (kbd "s-l") 'flycheck-list-errors)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-o") 'helm-occur)

(toggle-frame-fullscreen)

(helm-mode 1)

(setq select-enable-clipboard t)
(remove-hook 'prog-mode-hook 'esk-turn-on-hl-line-mode)
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'fringe-mode) (fringe-mode 4))

(set-frame-font "Source Code Pro")

(winner-mode)
(windmove-default-keybindings 'super)

(set-face-attribute 'default nil :height 160)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#3F3F3F" "#CC9393" "#7F9F7F" "#F0DFAF" "#8CD0D3" "#DC8CC3" "#93E0E3" "#DCDCCC"])
 '(company-quickhelp-color-background "#4F4F4F")
 '(company-quickhelp-color-foreground "#DCDCCC")
 '(custom-safe-themes
   '("1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" "834cbeacb6837f3ddca4a1a7b19b1af3834f36a701e8b15b628cad3d85c970ff" "0f0a4dca8bb029dc5139f447ff25bc3c18d31872c30a46d03c6bbc706ded3586" "0fffa9669425ff140ff2ae8568c7719705ef33b7a927a0ba7c5e2ffcfac09b75" "13a8eaddb003fd0d561096e11e1a91b029d3c9d64554f8e897b2513dbf14b277" "51ec7bfa54adf5fff5d466248ea6431097f5a18224788d0bd7eb1257a4f7b773" "7f1d414afda803f3244c6fb4c2c64bea44dac040ed3731ec9d75275b9e831fe5" "00445e6f15d31e9afaa23ed0d765850e9cd5e929be5e8e63b114a3346236c44c" "285d1bf306091644fb49993341e0ad8bafe57130d9981b680c1dbd974475c5c7" "830877f4aab227556548dc0a28bf395d0abe0e3a0ab95455731c9ea5ab5fe4e1" "2809bcb77ad21312897b541134981282dc455ccd7c14d74cc333b6e549b824f3" "7aaee3a00f6eb16836f5b28bdccde9e1079654060d26ce4b8f49b56689c51904" "f3455b91943e9664af7998cc2c458cfc17e674b6443891f519266e5b3c51799d" "0c9f63c9d90d0d135935392873cd016cc1767638de92841a5b277481f1ec1f4a" "cdb4ffdecc682978da78700a461cdc77456c3a6df1c1803ae2dd55c59fa703e3" "a7051d761a713aaf5b893c90eaba27463c791cd75d7257d3a8e66b0c8c346e77" "c82d24bfba431e8104219bfd8e90d47f1ad6b80a504a7900cbee002a8f04392f" "04232a0bfc50eac64c12471607090ecac9d7fd2d79e388f8543d1c5439ed81f5" "d057f0430ba54f813a5d60c1d18f28cf97d271fd35a36be478e20924ea9451bd" "ec5f697561eaf87b1d3b087dd28e61a2fc9860e4c862ea8e6b0b77bd4967d0ba" "e03d2f414fb109f3920752b10b92323697174f49d577da9e69979edbb147a921" "0c32e4f0789f567a560be625f239ee9ec651e524e46a4708eb4aba3b9cdc89c5" "3f44e2d33b9deb2da947523e2169031d3707eec0426e78c7b8a646ef773a2077" "190a9882bef28d7e944aa610aa68fe1ee34ecea6127239178c7ac848754992df" "e11569fd7e31321a33358ee4b232c2d3cf05caccd90f896e1df6cab228191109" "599f1561d84229e02807c952919cd9b0fbaa97ace123851df84806b067666332" "2022c5a92bbc261e045ec053aa466705999863f14b84c012a43f55a95bf9feb8" "5e52ce58f51827619d27131be3e3936593c9c7f9f9f9d6b33227be6331bf9881" "2a739405edf418b8581dcd176aaf695d319f99e3488224a3c495cb0f9fd814e3" "cdfc5c44f19211cfff5994221078d7d5549eeb9feda4f595a2fd8ca40467776c" "8db4b03b9ae654d4a57804286eb3e332725c84d7cdab38463cb6b97d5762ad26" "b571f92c9bfaf4a28cb64ae4b4cdbda95241cd62cf07d942be44dc8f46c491f4" "938d8c186c4cb9ec4a8d8bc159285e0d0f07bad46edf20aa469a89d0d2a586ea" "67e998c3c23fe24ed0fb92b9de75011b92f35d3e89344157ae0d544d50a63a72" "98cc377af705c0f2133bb6d340bf0becd08944a588804ee655809da5d8140de6" "b9cbfb43711effa2e0a7fbc99d5e7522d8d8c1c151a3194a4b176ec17c9a8215" "ed8cf6d52a2ba9ed7a29a8aac81d83c362a9b62f48b558932a77130163fe9972" default))
 '(electric-indent-mode nil)
 '(fci-rule-color "#383838")
 '(flycheck-display-errors-delay 0)
 '(flycheck-eslint-rules-directories '("/home/hanktard/work/fuckercompany/"))
 '(flycheck-javascript-eslint-executable
   "/home/hanktard/work/fuckercompany/node_modules/.bin/eslint")
 '(flycheck-javascript-standard-executable "npx standard")
 '(global-flycheck-mode t)
 '(helm-completion-style 'emacs)
 '(highlight-indent-guides-method 'fill)
 '(indent-tabs-mode nil)
 '(js-indent-level 2)
 '(js2-basic-offset 2)
 '(js2-bounce-indent-p t)
 '(js2-strict-missing-semi-warning nil)
 '(nrepl-message-colors
   '("#CC9393" "#DFAF8F" "#F0DFAF" "#7F9F7F" "#BFEBBF" "#93E0E3" "#94BFF3" "#DC8CC3"))
 '(org-agenda-files nil)
 '(org-default-notes-file "~/org/.notes")
 '(org-return-follows-link t)
 '(package-selected-packages
   '(color-theme-sanityinc-tomorrow solarized-theme prettier-js flyspell-correct-helm helm-flycheck lsp-treemacs company-lsp helm-lsp lsp-ui lsp-mode ac-helm helm-google helm-projectile helm helm-rg string-inflection which-key vlf sql-indent smooth-scrolling vue-mode typescript-mode graphql-mode flycheck-rust rust-mode add-node-modules-path flycheck yaml-mode vcl-mode orca move-text web-beautify xah-css-mode ac-js2 json-mode csv-mode ibuffer-projectile projectile ample-theme anti-zenburn-theme hc-zenburn-theme material-theme moe-theme molokai-theme zenburn-theme gotham-theme highlight-indent-guides rainbow-delimiters rainbow-mode magit csv auto-compile goto-last-change web-mode starter-kit-eshell starter-kit-bindings slime scss-mode org markdown-mode js2-mode find-file-in-repository better-defaults auto-complete use-package))
 '(pdf-view-midnight-colors '("#DCDCCC" . "#383838"))
 '(safe-local-variable-values
   '((helm-rg-default-glob-string . "!*{.min.,vendor.js,doubly.js,polyfills.js,.svg,yotpo-full-css.css}*")
     (helm-rg-default-extra-args . "-Tlock")
     (helm-rg-default-glob-string . "!*.min.*")
     (helm-rg-default-extra-args . "-g \"*vendor.js\"")
     (helm-rg-default-extra-args . "-g '*vendor.js'")
     (helm-rg-default-extra-args . "-m '!*vendor.js'")
     (helm-rg-default-extra-args . "-g '!*vendor.js'")
     (helm-rg-default-extra-args . "-g !*vendor.js")
     (helm-rg-default-glob-string . "!*lock*")
     (add-to-list 'auto-mode-alist
                  '("\\.js\\'" . prettier-js-mode))
     (add-to-list 'auto-mode-alist
                  '("\\.js\\'" . js-mode))
     (js-indent-level . 4)
     (prettier-js-mode)
     (js-indent-level 4)))
 '(smooth-scrolling-mode t)
 '(ssass-tab-width 4)
 '(sublimity-mode t)
 '(vc-annotate-background "#2B2B2B")
 '(vc-annotate-color-map
   '((20 . "#BC8383")
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
     (360 . "#DC8CC3")))
 '(vc-annotate-very-old-color "#DC8CC3")
 '(vue-html-extra-indent 0)
 '(vue-html-tab-width 4))

(package-install-selected-packages)

(setq-default indent-tabs-mode nil)

;; Disable SCSS auto compile
(setq scss-compile-at-save nil)

;; setup files ending in “.html” to open in Web mode
(add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.liquid\\'" . web-mode))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(setq ido-max-directory-size "No limit")

;; start projectile at boot.
(projectile-mode 1)

(let ((print-escape-newlines t))
  (prin1-to-string "foo\nbar"))

(load-theme 'sanityinc-tomorrow-night)

(add-hook 'js2-mode-hook 'highlight-indent-guides-mode)
;; turn of electric indent so js2 indentation works
(add-hook 'js2-mode-hook (lambda () (electric-indent-local-mode -1)))
;; Turn off js2 mode errors & warnings (we lean on eslint/standard)
(setq js2-mode-show-parse-errors nil)
(setq js2-mode-show-strict-warnings nil)
(add-hook 'scss-mode-hook 'rainbow-mode)
(add-hook 'js-mode-hook 'rainbow-delimiters-mode)
(add-hook 'prog-mode-hook #'lsp)
(add-hook 'js-mode-hook 'js2-minor-mode)


(defun my-web-mode-hook ()
  "Hooks for Web mode."
  (setq web-mode-markup-indent-offset 2)
)
(add-hook 'web-mode-hook  'my-web-mode-hook)
(setq web-mode-enable-auto-indentation nil)


;; Keep backup files in this directory instead of working directory
(setq backup-directory-alist '(("." . "~/.emacs.d/backup"))
  backup-by-copying t    ; Don't delink hardlinks
  version-control t      ; Use version numbers on backups
  delete-old-versions t  ; Automatically delete excess backups
  kept-new-versions 20   ; how many of the newest versions to keep
  kept-old-versions 5    ; and how many of the old
  )

;; Enable flycheck
(use-package flycheck
  :ensure t
  :init (global-flycheck-mode))

(eval-after-load 'js2-mode
  '(add-hook 'js-mode-hook #'add-node-modules-path))

(setq org-agenda-files (list "~/org/maisonFortunee.org"))

(load "~/dotfiles/datumdag.el")

;;; .emacs ends here
