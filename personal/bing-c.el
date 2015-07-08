;;; bing-c.el --- My configurations for C

;;; Code:

(setq-default flycheck-clang-include-path '("~/include"))

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
            (local-set-key (kbd "C-c C-c") 'comment-or-uncomment-region)

            (c-add-style
             "linux-tabs-only"
             '("linux" (c-offsets-alist
                        (arglist-cont-nonempty
                         c-lineup-gcc-asm-reg
                         c-lineup-arglist-tabs-only))))

            (c-add-style
             "bsd-2-sp"
             '("bsd" (c-basic-offset . 2)))

            (c-add-style
             "bsd-4-sp"
             '("bsd" (c-basic-offset . 4)))

            (setq-default c-default-style "bsd-4-sp")
            (setq-default indent-tabs-mode nil)))

(defun bing/c-linux-mode ()
  (interactive)
  (setq indent-tabs-mode t)
  (setq tab-width 8)
  (c-set-style "linux"))

(setq c-default-style "bsd-4-sp")
(setq indent-tabs-mode nil)

(add-hook 'c-mode-hook
          (lambda ()
            (let ((filename (buffer-file-name)))
              ;; Enable kernel mode for the appropriate files
              (when (and filename
                       (or (string-match
                            (expand-file-name "~/src/bb/libmol")
                            filename)
                           (string-match
                            (expand-file-name "~/src/bb/libgrid")
                            filename)
                           (string-match
                            (expand-file-name "~/src/bb/libmol2")
                            filename)
                           (string-match
                            (expand-file-name "~/src/bb/libgrid2")
                            filename)
                           (string-match
                            (expand-file-name "~/src/bb/piper")
                            filename)
                           ))
                  (bing/c-linux-mode)))))

;;; bing-c.el ends here
