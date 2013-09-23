;;; bing-misc.el --- My miscellaneous configurations

;;; Commentary:

;; Random collection of settings I want applied everywhere.
;; Machine specific settings will be put in custom.el and checked into
;; a branch if necessary.

;;; Code:
(custom-set-faces
 '(default ((t (:family "Envy Code R" :foundry "unknown" :slant normal :weight normal :height 98 :width normal)))))
(custom-set-variables
 '(transient-mark-mode nil)
 '(standard-indent 2)
 '(column-number-mode t))
(global-linum-mode 1)
(setq default-tab-width 4)

(scroll-bar-mode -1)

(setq projectile-enable-caching t)

(setq uniquify-buffer-name-style 'post-forward
      uniquify-separator ":")

(setq
 backup-by-copying t ; don't clobber symlinks
 delete-old-versions t
 kept-new-versions 5
 kept-old-versions 5
 version-control t) ; versioned backups

;; Disable visualization of empty lines at beginning and end of document.
(setq whitespace-style '(face tabs trailing lines-tail))

;; Disable guru-mode; arrow keys are useful sometimes
(setq prelude-guru nil)

(setq package-archives
      (cons package-archives
            '(("SC" . "http://joseito.republika.pl/sunrise-commander/"))))

(setq package-archives
      '(("gnu" . "http://elpa.gnu.org/packages/")
         ("melpa" . "http://melpa.milkbox.net/packages/")
         ("SC" . "http://joseito.republika.pl/sunrise-commander/")))

;;; bing-misc.el ends here
