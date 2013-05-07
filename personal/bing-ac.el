;;; bing-ac.el --- My configurations for auto-complete

;;; Code:
(prelude-ensure-module-deps '(auto-complete auto-complete-clang))

;; Make sure yasnippet is present
(require 'yasnippet)
(yas-global-mode 1) 

(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(ac-config-default)

(ac-set-trigger-key "TAB")

(define-key ac-menu-map "\C-n" 'ac-next)
(define-key ac-menu-map "\C-p" 'ac-previous)

(require 'auto-complete-clang)
(global-set-key (kbd "C-`") 'ac-complete-clang)

;;; bing-ac.el ends here
