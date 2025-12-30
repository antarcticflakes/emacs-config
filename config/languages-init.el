;;; languages --- Summary
;;;
;;; Programming Languages
;;;
;;; Commentary:
;;;
;;; ... what can i summary?
;;;
;;; Code:
(use-package cmake-mode
  :ensure t
  :defer t)

(use-package go-mode
  :ensure t
  :defer t
  :hook
  (go-mode . (lambda ()
	       (setq tab-width 4)
	       (add-hook 'before-save-hook 'gofmt-before-save)
	       (lsp-deferred))))

(provide 'languages-init)

;;; languages-init.el ends here
