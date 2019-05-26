;; We want the daemon mode:
(server-start)

(prelude-require-packages '(deft lsp-mode lsp-python lsp-ui company-lsp pyenv-mode lsp-mode lsp-haskell tabbar flymd))


(require 'lsp)
(require 'lsp-haskell)
(add-hook 'haskell-mode-hook #'lsp)
(setq lsp-haskell-process-path-hie "hie-wrapper")
(setq haskell-saved-check-command "hlint")


(setq deft-extensions '("txt" "tex" "org" "md"))
(setq deft-directory "~/repos/playground/defter/")

(defun my/markdown-settings ()
  (setq prelude-clean-whitespace-on-save nil))

(add-hook 'markdown-mode-hook 'my/markdown-settings)

(setq js-indent-level 2)


(defun my-flymd-browser-function (url)
  (let ((process-environment (browse-url-process-environment)))
    (apply 'start-process
           (concat "firefox " url)
           nil
           "/usr/bin/open"
           (list "-a" "firefox" url))))
(setq flymd-browser-open-function 'my-flymd-browser-function)

(add-to-list 'auto-mode-alist '("README\\.md\\'" . gfm-mode))
(setq markdown-command "pandoc --from gfm -t html5 --mathjax --highlight-style pygments --standalone --metadata pagetitle=\"Markdown Preview\"")
