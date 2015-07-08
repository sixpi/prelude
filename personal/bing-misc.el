;;; bing-misc.el --- My miscellaneous configurations

;;; Commentary:

;; Random collection of settings I want applied everywhere.
;; Machine specific settings will be put in custom.el and checked into
;; a branch if necessary.

;;; Code:
(custom-set-faces
 '(default ((t (:family "DejaVu Sans Mono" :foundry "unknown" :slant normal :weight normal :height 98 :width normal)))))
(custom-set-variables
 '(standard-indent 2)
 '(column-number-mode t))
(global-linum-mode 1)
(setq tab-width 4)

(scroll-bar-mode -1)

(setq uniquify-buffer-name-style 'post-forward
      uniquify-separator ":")

(setq
 backup-by-copying t ; don't clobber symlinks
 delete-old-versions t
 kept-new-versions 5
 kept-old-versions 5
 version-control t) ; versioned backups

(defun push-mark-no-activate ()
  "Pushes `point' to `mark-ring' and does not activate the region.
Equivalent to \\[set-mark-command] when \\[transient-mark-mode] is disabled]"
  (interactive)
  (push-mark (point) t nil)
  (message "Pushed mark to ring"))

(global-set-key (kbd "C-'") 'push-mark-no-activate)

(defun jump-to-mark ()
  "Jump to the local mark, respecting `mark-ring' order."
  (interactive)
  (set-mark-command 1))

(global-set-key (kbd "C-;") 'jump-to-mark)

;; Disable visualization of empty lines at beginning and end of document.
(setq whitespace-style '(face tabs tab-mark trailing lines-tail))

;; Disable guru-mode; arrow keys are useful sometimes
(setq prelude-guru nil)

(setq package-archives
      (append package-archives
              '(("gnu" . "http://elpa.gnu.org/packages/")
                ("melpa" . "http://melpa.milkbox.net/packages/"))))

;; Ensure bash for tramp, zsh causes problems
(eval-after-load 'tramp '(setenv "SHELL" "/bin/bash"))

(setq magit-last-seen-setup-instructions "1.4.0")

;;; bing-misc.el ends here
