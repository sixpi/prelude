;;; bing-web.el --- My configurations for web development modes

;;; Code:
(prelude-ensure-module-deps '(php-mode apache-mode web-mode))

(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jsp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.php$" . web-mode))
(add-to-list 'auto-mode-alist '("\\.blade.php$" . web-mode))

(setq web-mode-engines-alist
      '("blade"  . "\\.blade\\."))
(setq web-mode-indent-style 2)

(setq js-indent-level 2)

;;; bing-web.el ends here
