;; We want the daemon mode:
(server-start)

(prelude-require-packages '(deft lsp-mode lsp-python lsp-ui company-lsp pyenv-mode lsp-mode lsp-haskell tabbar))


(require 'lsp)
(require 'lsp-haskell)
(add-hook 'haskell-mode-hook #'lsp)
(setq lsp-haskell-process-path-hie "hie-wrapper")
(setq haskell-saved-check-command "hlint")


(setq deft-extensions '("txt" "tex" "org" "md"))
(setq deft-directory "~/repos/playground/defter/")


(setq js-indent-level 2)
