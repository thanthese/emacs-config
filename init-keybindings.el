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
