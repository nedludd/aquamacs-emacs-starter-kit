;; sunrise-commander-setup.el
;;
;; Turn on and configure Sunrise Commander
;;
;; Mamading Ceesay, 2010-02-17
;;
;; http://github.com/evangineer/aquamacs-emacs-starter-kit

(load-file (concat kitfiles-dir "/site-lisp" "/sunrise-commander/sunrise-commander.el"))
(require 'sunrise-commander)
(add-to-list 'auto-mode-alist '("\\.srvm\\'" . sr-virtual-mode))

(provide 'sunrise-commander-setup)
