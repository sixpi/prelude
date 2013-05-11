;;; bing-python.el --- My configurations for python

;;; Code:
;(require 'ipython)
;(require 'cython-mode)

(prelude-ensure-module-deps '(jedi))

(setq jedi:setup-keys t)
(add-hook 'python-mode-hook 'jedi:setup)

;;; bing-python.el ends here
