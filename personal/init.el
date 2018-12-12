;; We want the daemon mode:
(server-start)

(prelude-require-package 'deft)

(setq deft-extensions '("txt" "tex" "org" "md"))
(setq deft-directory "~/repos/playground/defter/")
