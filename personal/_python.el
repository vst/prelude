(defun my-python-fill-string (&optional justify)
  (setq fill-column 100)
  (python-fill-string justify))

(add-hook 'python-mode-hook
          (lambda ()
            (interactive)
            (setq python-fill-docstring-style 'django)
            (setq python-fill-string-function 'my-python-fill-string)))
