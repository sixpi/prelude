;;; bing-c.el --- My configurations for C

;;; Code:
(setq-default c-default-style "bsd")
(setq-default c-basic-offset 2)
(setq-default indent-tabs-mode nil)

(defun bing/c-mode-common-hook ()
  (interactive)
  (local-set-key "\C-c\C-c" 'comment-or-uncomment-region)
  (setq c-default-style "bsd")
  (setq c-basic-offset 2)
  (setq indent-tabs-mode nil))
(add-hook 'c-mode-common-hook 'bing/c-mode-common-hook)

(defun bing/linux-mode-hook ()
  (interactive)
  (setq indent-tabs-mode t)
  (c-set-style "linux-tabs-only"))


(defun c-lineup-arglist-tabs-only (ignored)
  "Line up argument lists by tabs, not spaces"
  (let* ((anchor (c-langelem-pos c-syntactic-element))
         (column (c-langelem-2nd-pos c-syntactic-element))
         (offset (- (1+ column) anchor))
         (steps (floor offset c-basic-offset)))
    (* (max steps 1)
       c-basic-offset)))

(add-hook 'c-mode-common-hook
          (lambda ()
            (local-set-key (kbd "C-c C-t") 'ff-find-other-file)
            (c-add-style
             "linux-tabs-only"
             '("linux" (c-offsets-alist
                        (arglist-cont-nonempty
                         c-lineup-gcc-asm-reg
                         c-lineup-arglist-tabs-only))))))


;;; bing-c.el ends here
