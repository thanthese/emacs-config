;; marmalade (package manager)
(require 'package)
(add-to-list 'package-archives
	     '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

;; ibuffers is better than the default
(defalias 'list-buffers 'ibuffer)

;; ido
(require 'ido)
(ido-mode 1)
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)

;; paredit
(require 'paredit)
(add-hook 'emacs-lisp-mode-hook       'paredit-mode)
(add-hook 'lisp-mode-hook             'paredit-mode)
(add-hook 'lisp-interaction-mode-hook 'paredit-mode)
(add-hook 'scheme-mode-hook           'paredit-mode)

;; clojure-mode
;;
;; To kick clojure editing off, nativate to anywhere in a leiningen
;; project and enter `M-x nrepl-jack-in`.
(unless (package-installed-p 'clojure-mode)
  (package-refresh-contents)
  (package-install 'clojure-mode))
(require 'clojure-mode)
(add-hook 'clojure-mode-hook
          'paredit-mode)

;; nrepl
(unless (package-installed-p 'nrepl)
  (package-refresh-contents)
  (package-install 'nrepl))
(require 'nrepl)
(setq nrepl-popup-stacktraces nil)
(add-hook 'nrepl-interaction-mode-hook 
	  'nrepl-turn-on-eldoc-mode)
(add-hook 'nrepl-mode-hook 
	  'paredit-mode)
(add-hook 'clojure-mode-hook
          'nrepl-interaction-mode)

;; babel
(org-babel-do-load-languages
 'org-babel-load-languages
 '((R . t)
   (gnuplot .t)))
;; if this isn't defined, it errors on gnuplot
(defun make-local-hook () nil)

(provide 'init-packages)
