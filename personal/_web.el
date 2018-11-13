;; We want web-mode:
(require 'prelude-web)

;; Work with handlebars:
(add-to-list 'auto-mode-alist '("\\.hbs\\'" . web-mode))
