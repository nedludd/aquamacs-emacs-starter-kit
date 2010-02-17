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

;; custom keybindings for Sunrise Commander
;; inspired by http://www.emacswiki.org/emacs/Sunrise_Commander_Tips#toc1
(global-set-key (kbd "C-c s x") 'sunrise)
(global-set-key (kbd "C-c s X") 'sunrise-cd)

(provide 'sunrise-commander-setup)
