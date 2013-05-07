;;; bing-python.el --- My configurations for python

;;; Code:
;(require 'ipython)
;(require 'cython-mode)

(prelude-ensure-module-deps '(jedi))

(require 'jedi)
(add-hook 'python-mode-hook 'jedi:setup)

;;; bing-python.el ends here
