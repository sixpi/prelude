;;; bing-web.el --- Configuration for web development

;;; Code:
(prelude-ensure-module-deps '(php-mode apache-mode))

(add-to-list 'auto-mode-alist '("\\.php$" . php-mode))

(setq js-indent-level 2)

;;; bing-web.el ends here
