(provide 'init-defuns)

(defun sm/pretty-lambdas ()
  (interactive)
  (font-lock-add-keywords
   nil `(("(?\\(lambda\\>\\)"
          (0 (progn (compose-region (match-beginning 1) (match-end 1)
                                    ,(make-char 'greek-iso8859-7 107))
                    nil))))))

(defun sm/indent-buffer ()
  (interactive)
  (indent-region (point-min) (point-max)))

(defun sm/install-package (package)
  "Install and require package."
  (unless (package-installed-p package)
    (condition-case nil
	(package-install package)
      (error
       (package-refresh-contents)
       (package-install package))))
  (require package))

(defun sm/move-line-up ()
  (interactive)
  (transpose-lines 1)
  (previous-line 2))

(defun sm/move-line-down ()
  (interactive)
  (next-line 1)
  (transpose-lines 1)
  (previous-line 1))

(defun sm/fix-path (path)
  "Emacs makes load paths difficult."
  (setenv "PATH" (concat path path-separator (getenv "PATH")))
  (push path exec-path)
  (add-to-list 'load-path path))
