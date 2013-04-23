;;; bing-ibuffer.el --- My configurations for ibuffer

;;; Code:
(prelude-ensure-module-deps '(ibuffer-vc))

(setq ibuffer-show-empty-filter-groups nil)
(add-hook 'ibuffer-mode-hook
          (lambda ()
            (ibuffer-auto-mode 1)
            (ibuffer-vc-set-filter-groups-by-vc-root)
            (unless (eq ibuffer-sorting-mode 'alphabetic)
              (ibuffer-do-sort-by-alphabetic))))

;;; bing-ibuffer.el ends here
