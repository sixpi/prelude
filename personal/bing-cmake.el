;;; bing-cmake.el --- cmake-mode config

;;; Code:
(require 'cmake-mode)
(add-to-list 'auto-mode-alist '("CMakeLists.txt$" . cmake-mode))
(add-to-list 'auto-mode-alist '("\\.cmake$" . cmake-mode))

;;; bing-cmake.el ends here
