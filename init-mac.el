(provide 'init-mac)

;; emacs load paths
(mapcar 'sm/fix-path
	'("/usr/local/bin"
	  "/usr/local/git/bin"
          "/usr/texbin"))

;; super keys!
(setq mac-function-modifier 'hyper)

;; move to trash instead of delete
(setq delete-by-moving-to-trash t
      trash-directory "~/.Trash/emacs")

;; .DS_Store files are dumb
(add-to-list 'ido-ignore-files "\\.DS_Store")

;; how to browse links
(setq browse-url-browser-function 'browse-default-macosx-browser)
