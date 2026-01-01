;;; basic --- Summary
;;;
;;; The basic editor settings.
;;;
;;; Commentary:
;;;
;;; Code:

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

(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)

(global-hl-line-mode t)

(when (display-graphic-p)
  (menu-bar-mode -1)
  (tool-bar-mode -1))

(provide 'basic-init)

;;; basic-init.el ends here
