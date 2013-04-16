;;; bing-c.el --- My configurations for C

;;; Code:
(setq c-default-style "bsd")
(setq-default c-basic-offset 2)
(setq-default indent-tabs-mode nil)
(defun bing/c-mode-common-hook ()
  (local-set-key "\C-c\C-c" 'comment-or-uncomment-region))
(add-hook 'c-mode-common-hook 'bing/c-mode-common-hook)

;;; bing-c.el ends here
