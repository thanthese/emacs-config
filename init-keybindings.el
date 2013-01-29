(provide 'init-keybindings)

;; multiple-cursors
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

;; expand region
(global-set-key (kbd "C-=") 'er/expand-region)

;; smex
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)

;; move lines
(global-set-key (kbd "M-p") 'sm/move-line-up)
(global-set-key (kbd "M-n") 'sm/move-line-down)

;; kill ine
(global-set-key (kbd "C-S-k") 'kill-line)

;; eval and replace
(global-set-key (kbd "H-e") 'sm/eval-and-replace)

;; go back a window
(global-set-key (kbd "C-x O") (lambda ()
                                (interactive)
                                (other-window -1))) ;; back one

;; start the stronger apropos
(define-key 'help-command "A" 'apropos)

;; use hippie-expand instead of dabbrev
(global-set-key (kbd "M-/") 'hippie-expand)

;; ace jump mode
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)
