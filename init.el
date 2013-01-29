; define where settings live
(add-to-list 'load-path user-emacs-directory)

; are we on a mac?
(setq is-mac (equal system-type 'darwin))

; load settings
(require 'init-settings)
(require 'init-defuns)
(require 'init-packages)
(require 'init-hooks)
(require 'init-keybindings)
(when is-mac (require 'init-mac))
