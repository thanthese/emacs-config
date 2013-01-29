(provide 'init-hooks)

;; add pretty lambdas
(add-hook 'emacs-lisp-mode-hook 'sm/pretty-lambdas)
(add-hook 'lisp-mode-hook 'sm/pretty-lambdas)

;; remove extra whitespace on save
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; paredit
(add-hook 'emacs-lisp-mode-hook       'paredit-mode)
(add-hook 'lisp-mode-hook             'paredit-mode)
(add-hook 'lisp-interaction-mode-hook 'paredit-mode)
(add-hook 'scheme-mode-hook           'paredit-mode)
(add-hook 'clojure-mode-hook          'paredit-mode)
(add-hook 'nrepl-mode-hook            'paredit-mode)

(add-hook 'nrepl-interaction-mode-hook
	  'nrepl-turn-on-eldoc-mode)

(add-hook 'clojure-mode-hook
          'nrepl-interaction-mode)
