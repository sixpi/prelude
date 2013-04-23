;;; bing-cmake.el --- My configurations for cmake

;;; Code:
(require 'cmake-mode)
(add-to-list 'auto-mode-alist '("CMakeLists.txt$" . cmake-mode))
(add-to-list 'auto-mode-alist '("\\.cmake$" . cmake-mode))

;;; bing-cmake.el ends here
