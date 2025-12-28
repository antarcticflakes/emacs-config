;; Basic Configuration
(setq confirm-kill-emacs #'yes-or-no-p)
(electric-pair-mode t)
(add-hook 'prog-mode-hook #'show-paren-mode)
(column-number-mode t)
(global-auto-revert-mode t)
(delete-selection-mode t)
(setq inhibit-startup-message t)
(setq auto-save-default nil)
(setq make-backup-files nil)
(global-display-line-numbers-mode 1)
(when (display-graphic-p)
  (toggle-scroll-bar -1)
  (menu-bar-mode -1)
  (tool-bar-mode -1))

;; Packages mirrors
(require 'package)
(setq package-archives '(("gnu"   . "http://mirrors.ustc.edu.cn/elpa/gnu/")
			 ("melpa" . "http://mirrors.ustc.edu.cn/elpa/melpa/")))
(package-initialize)

;; Plugins
(use-package ivy
  :ensure t
  :init (ivy-mode))

(use-package rainbow-delimiters
  :ensure t
  :hook (prog-mode . rainbow-delimiters-mode))

(use-package evil
  :ensure t
  :init
  (setq evil-want-keybinding nil)
  :config
  (evil-mode 1))

(use-package evil-collection
  :ensure t
  :after evil
  :config
  (evil-collection-init))

(use-package which-key
  :ensure t
  :init (which-key-mode))

(use-package company
  :ensure t
  :init (global-company-mode)
  :config
  (setq company-minimum-prefix-length 1)
  (setq company-tooltip-align-annotations t)
  (setq company-idle-delay 0.0)
  (setq company-show-numbers t)
  (setq company-selection-wrap-around t)
  (setq company-transformers '(company-sort-by-occurrence)))

(use-package centaur-tabs
  :ensure t
  :demand
  :config
  (centaur-tabs-mode t)
  :bind
  ("C-x n" . centaur-tabs-backward)
  ("C-x m" . centaur-tabs-forward))

(use-package neotree
  :ensure t
  :config
  (setq neo-theme 'icons)
  :bind
  ("C-x t" . neotree-toggle))

(use-package catppuccin-theme
  :ensure t)

(load-theme 'catppuccin :no-confirm)

(setq custom-file "~/.config/emacs/custom.el")
(load custom-file)

(provide 'init)
