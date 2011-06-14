;; ido-setup.el
;;
;; Turn on (and maybe later configure) ido
;;
;; Walter McGinnis, 2009-06-29
;;
;; http://github.com/walter/aquamacs-emacs-starter-kit

(ido-mode t)

;; Put "." as the first item in a list of filenames, so you can easily
;; start dired in the current directory
(setq ido-show-dot-for-dired t)

(provide 'ido-setup)
