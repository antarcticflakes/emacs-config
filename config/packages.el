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

(use-package lsp-mode
  :ensure t
  :init
  (setq lsp-keymap-prefix "C-c l")
  :hook (
         (lsp-mode . lsp-enable-which-key-integration))
  :commands (lsp lsp-deferred))

(use-package lsp-ui
  :ensure t
  :after (lsp-mode)
  :config
  (setq lsp-ui-doc-position 'top))

(use-package projectile
  :ensure t
  :init
  ; (setq projectile-project-search-path '("~/projects/" "~/work/" "~/playground"))
  :config
  (define-key projectile-mode-map (kbd "C-c C-p") 'projectile-command-map)
  (global-set-key (kbd "C-c p") 'projectile-command-map)
  (projectile-mode +1))

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

(provide 'packages)
