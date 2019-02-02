;; We want the daemon mode:
(server-start)

(prelude-require-packages '(deft lsp-mode lsp-python lsp-ui company-lsp pyenv-mode lsp-mode lsp-haskell))

(add-hook 'haskell-mode-hook #'lsp)
(setq lsp-haskell-process-path-hie "hie-wrapper")

(require 'lsp)
(require 'lsp-haskell)
(add-hook 'haskell-mode-hook #'lsp)


(setq deft-extensions '("txt" "tex" "org" "md"))
(setq deft-directory "~/repos/playground/defter/")
