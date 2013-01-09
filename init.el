;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; native stuff

;; the startup screen is annoying
(setq inhibit-startup-message t
      inhibit-startup-echo-area-message t)

;; hide emacs toolbar
(tool-bar-mode -1)

;; highlight the entire s-exp, not just the parens
(show-paren-mode t)
(setq show-paren-style 'expression)
(setq show-paren-delay 0)  

;; ibuffers is better than the default
(defalias 'list-buffers 'ibuffer)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; setup native packages

;; marmalade (package manager)
(require 'package)
(add-to-list 'package-archives
	     '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

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

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; setup external packages

;; For the purposes of using clojure, I like to have the modes
;; - paredit
;; - nrepl-interaction
;;
;; To kick clojure editing off, nativate to anywhere in a leiningen
;; project and enter `M-x nrepl-jack-in`.

;; clojure-mode
(unless (package-installed-p 'clojure-mode)
  (package-refresh-contents)
  (package-install 'clojure-mode))
;; (unless (package-installed-p 'clojure-test-mode)
;;   (package-refresh-contents)
;;   (package-install 'clojure-test-mode))
(require 'clojure-mode)
(add-hook 'clojure-mode-hook
          'paredit-mode)
;; (add-hook 'clojure-test-mode-hook
;; 	  'paredit-mode)

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

;; auto-complete
;; (unless (package-installed-p 'auto-complete)
;;   (package-refresh-contents)
;;   (package-install 'auto-complete))
;; (require 'auto-complete)
;; (add-hook 'emacs-lisp-mode-hook 'auto-complete-mode)
;; (add-hook 'clojure-mode-hook 'auto-complete-mode)

;; auto-complete nrepl
;; (unless (package-installed-p 'ac-nrepl)
;;   (package-refresh-contents)
;;   (package-install 'ac-nrepl))
;; (require 'ac-nrepl)
;; (add-hook 'nrepl-mode-hook
;; 	  'ac-nrepl-setup)
;; (add-hook 'nrepl-interaction-mode-hook
;; 	  'ac-nrepl-setup)
;; (eval-after-load "auto-complete"
;;   '(add-to-list 'ac-modes 'nrepl-mode))
