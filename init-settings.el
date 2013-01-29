(provide 'init-settings)

;; the startup screen is annoying
(setq inhibit-startup-message t
      inhibit-startup-echo-area-message t)

;; no need for the cursor to blink
(blink-cursor-mode -1)

;; misc stuff I don't always understand
(setq font-lock-maximum-decoration t
      color-theme-is-global t
      truncate-partial-width-windows nil)

;; highlight current line
(global-hl-line-mode 1)

;; hide emacs toolbar
(tool-bar-mode -1)

;; highlight the entire s-exp, not just the parens
(show-paren-mode t)
(setq show-paren-style 'expression)
(setq show-paren-delay 0)

;; a simple "y" is sufficient
(defalias 'yes-or-no-p 'y-or-n-p)

;; load backups to their own directory
(setq backup-directory-alist
      `(("." . ,(expand-file-name
                 (concat user-emacs-directory "backups")))))

;; show keystrokes in progress
(setq echo-keystrokes 0.1)

;; inserting on a selection deletes the selection
(delete-selection-mode 1)

;; proper lines are 80 columns lone
(setq fill-column 80)

;; indictate empty lines at end of buffer
(set-default 'indicate-empty-lines t)

;; single space sentences
(set-default 'sentence-end-double-space nil)

;; how to browse links
(setq browse-url-browser-function 'browse-default-macosx-browser)

;; make kill-line kill newline
(setq kill-whole-line t)
