(provide 'init-packages)

;; setup marmalade (package manager)
(require 'package)
(add-to-list 'package-archives
	     '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

;; install packages
(mapcar 'sm/install-package
	'(paredit
	  clojure-mode
	  nrepl
	  multiple-cursors
	  expand-region
	  smex
	  winner
	  dash
	  s
	  smooth-scrolling
	  magit
          ace-jump-mode))

;; ibuffers is better than the default
(defalias 'list-buffers 'ibuffer)

;; ido
(ido-mode t)
(setq ido-enable-prefix nil
      ido-enable-flex-matching t
      ido-auto-merge-work-directories-length nil
      ido-create-new-buffer 'always
      ido-use-filename-at-point 'guess
      ido-use-virtual-buffers t
      ido-handle-duplicate-virtual-buffers 2
      ido-max-prospects 10)
(ido-everywhere)

;; nrepl
(setq nrepl-popup-stacktraces nil)

;; org-mode
(setq org-src-fontify-natively t)

;; babel
(org-babel-do-load-languages
 'org-babel-load-languages
 '((R . t)
   (gnuplot .t)
   (sh .t)))

;; smex
(smex-initialize)

;; winner mode
(winner-mode 1)
