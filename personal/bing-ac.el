;;; bing-ac.el --- My configurations for auto-complete

;;; Code:
(prelude-ensure-module-deps '(auto-complete auto-complete-clang))

(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(ac-config-default)

(ac-set-trigger-key "TAB")

(setq ac-use-menu-map t)
(define-key ac-menu-map "\C-n" 'ac-next)
(define-key ac-menu-map "\C-p" 'ac-previous)

(require 'auto-complete-clang)
(global-set-key (kbd "C-`") 'ac-complete-clang)
(setq ac-quick-help-delay 0.3)
(defun bing/ac-clang-config ()
  (setq-default ac-sources '(ac-source-abbrev
                             ac-source-dictionary
                             ac-source-words-in-same-mode-buffers)))
(setq ac-clang-flags
      (mapcar (lambda (item) (concat "-I" item))
              (split-string
               "
 ~/include
 .
 /usr/lib/gcc/x86_64-linux-gnu/4.8/include
 /usr/local/include
 /usr/lib/gcc/x86_64-linux-gnu/4.8/include-fixed
 /usr/include/x86_64-linux-gnu
 /usr/include
 /usr/include/c++/4.8
 /usr/include/x86_64-linux-gnu/c++/4.8/.
 /usr/include/c++/4.8/backward
"
               )))
(bing/ac-clang-config)

;;; bing-ac.el ends here
