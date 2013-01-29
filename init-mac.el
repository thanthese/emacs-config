(provide 'init-mac)

;; emacs load paths
(mapcar 'sm/fix-path
	'("/usr/local/bin"
	  "/usr/local/git/bin"))

(setenv "PATH" (concat "/usr/local/bin" path-separator (getenv "PATH")))
(push "/usr/local/bin" exec-path)
(add-to-list 'load-path "/usr/local/bin")

(setenv "PATH" (concat "/usr/local/bin" path-separator (getenv "PATH")))
(push "/usr/local/bin" exec-path)
(add-to-list 'load-path "/usr/local/bin")

;; super keys!
(setq mac-function-modifier 'hyper)

;; move to trash instead of delete
(setq delete-by-moving-to-trash t
      trash-directory "~/.Trash/emacs")

;; .DS_Store files are dumb
(add-to-list 'ido-ignore-files "\\.DS_Store")
