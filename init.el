;; Basic Configuration

(add-to-list 'load-path (expand-file-name "config" user-emacs-directory))

(require 'basic)
(require 'packages)
(require 'languages)

(load-theme 'catppuccin :no-confirm)

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

(provide 'init)
