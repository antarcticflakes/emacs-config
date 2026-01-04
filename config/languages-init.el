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

(use-package c++-mode
  :functions
  c-toggle-hungry-state
  :hook
  (c-mode . lsp-deferred)
  (c++-mode . lsp-deferred)
  (c++-mode . c-toggle-hungry-state))

(use-package go-mode
  :ensure t
  :defer t
  :hook
  (go-mode . (lambda ()
	       (setq tab-width 4)
	       (add-hook 'before-save-hook 'gofmt-before-save)
	       (lsp-deferred))))

(use-package lua-mode
  :ensure t
  :defer t)

(provide 'languages-init)

;;; languages-init.el ends here
