;; We want the daemon mode:
(server-start)

(prelude-require-packages '(deft lsp-mode lsp-python lsp-ui company-lsp pyenv-mode))

(setq deft-extensions '("txt" "tex" "org" "md"))
(setq deft-directory "~/repos/playground/defter/")
