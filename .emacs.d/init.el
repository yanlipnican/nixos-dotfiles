;; MELPA
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("2f1518e906a8b60fac943d02ad415f1d8b3933a5a7f75e307e6e9a26ef5bf570" default)))
 '(package-selected-packages (quote (doom-themes which-key use-package))))

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; PACKAGES

(use-package which-key
  :ensure t
  :config (which-key-mode))

(use-package doom-themes
  :ensure t
  :config (load-theme 'doom-one))

(use-package doom-modeline
  :ensure t
  :hook (after-init . doom-modeline-mode))

;;  SETTINGS

(tool-bar-mode -1)

;; (menu-bar-mode -1)

(global-display-line-numbers-mode)

(setq backup-directory-alist `(("." . "~/.emacs_saves")))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
