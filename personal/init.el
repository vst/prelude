;; TODO: CLEAN UP THE MESS

;; We want the daemon mode:
(server-start)

;; Extra packages required:
(prelude-require-packages '(
                            company-lsp
                            deft
                            flymd
                            lsp-haskell
                            lsp-mode
                            lsp-python
                            lsp-ui
                            pyenv-mode
                            )
                          )


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



(tool-bar-mode -1)
(setq frame-resize-pixelwise t)
(dotimes (n 3)
  (toggle-frame-maximized))


(set-face-attribute 'default nil :height 135)
(load-theme 'atom-one-dark)
