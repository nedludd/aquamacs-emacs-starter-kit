;; go-mode-setup.el
;;
;; Turn on and configure go-mode
;;
;; Mamading Ceesay, 2010-07-31
;;
;; http://github.com/evangineer/aquamacs-emacs-starter-kit

(add-to-list 'load-path
             (concat kitfiles-dir "/site-lisp" "/go-mode"))
(require 'go-mode-load)

(provide 'go-mode-setup)
