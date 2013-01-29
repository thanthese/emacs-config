;; the startup screen is annoying
(setq inhibit-startup-message t
      inhibit-startup-echo-area-message t)

;; hide emacs toolbar
(tool-bar-mode -1)

;; highlight the entire s-exp, not just the parens
(show-paren-mode t)
(setq show-paren-style 'expression)
(setq show-paren-delay 0)  

;; a simple "y" is sufficient
(defalias 'yes-or-no-p 'y-or-n-p)

;; emacs load paths
(setenv "PATH" (concat "/usr/local/bin" path-separator (getenv "PATH")))
(setq exec-path (append exec-path '("/usr/local/bin")))
(add-to-list 'load-path "/usr/local/bin")
(add-to-list 'load-path "/usr/share/emacs/site-lisp")

(provide 'init-settings)
