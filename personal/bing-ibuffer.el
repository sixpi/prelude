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

(setq ibuffer-formats
      '((mark modified read-only vc-status-mini " "
              (name 18 18 :left :elide)
              " "
              (size 9 -1 :right)
              " "
              (mode 16 16 :left :elide)
              " "
              (vc-status 16 16 :left)
              " "
              filename-and-process)
        (mark " "
              (name 16 -1)
              " " filename)))

;;; bing-ibuffer.el ends here
