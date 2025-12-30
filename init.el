;;; init --- Summary
;;;
;;; The editor init configs
;;;
;;; Commentary:
;;;
;;; Code:

(add-to-list 'load-path (expand-file-name "config" user-emacs-directory))

(require 'basic-init)
(require 'packages-init)
(require 'languages-init)

(load-theme 'catppuccin :no-confirm)

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

(provide 'init)

;;; init.el ends here
