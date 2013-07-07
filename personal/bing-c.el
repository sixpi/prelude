;;; bing-c.el --- My configurations for C

;;; Code:
(setq-default c-default-style "bsd")
(setq-default c-basic-offset 2)
(setq-default indent-tabs-mode nil)
(defun bing/c-mode-common-hook ()
  (local-set-key "\C-c\C-c" 'comment-or-uncomment-region)
  (setq 'c-default-style "bsd")
  (setq 'c-basic-offset 2)
  (setq 'indent-tabs-mode nil))
(add-hook 'c-mode-common-hook 'bing/c-mode-common-hook)

(defun bing/linux-mode-hook ()
  (interactive)
  (c-set-style "linux")
  (setq indent-tabs-mode t)
  (setq tab-width 8)
  (setq c-basic-offset 8))

(add-hook 'c-mode-common-hook
          (lambda ()
            (local-set-key (kbd "C-c C-t") 'ff-find-other-file)))

;;; bing-c.el ends here
