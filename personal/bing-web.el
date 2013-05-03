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
(add-to-list 'auto-mode-alist '("\\.php$" . php-mode))
(add-to-list 'auto-mode-alist '("\\.blade\\.php$" . web-mode))

(setq web-mode-engines-alist
      '(("blade"  . "\\.blade\\.php$")))

(defun bing/web-mode-hook ()
  "Hook for web-mode"
  (setq web-mode-indent-style 2)
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 4)
)
(add-hook 'web-mode-hook 'bing/web-mode-hook)

(setq js-indent-level 2)

;;; bing-web.el ends here
