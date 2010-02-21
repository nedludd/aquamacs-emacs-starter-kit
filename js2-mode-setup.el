;; js2-mode-setup.el
;;
;; Turn on and configure js2-mode
;;
;; Mamading Ceesay, 2010-02-21
;;
;; http://github.com/evangineer/aquamacs-emacs-starter-kit

(add-to-list 'load-path 
	(concat kitfiles-dir "/site-lisp" "/js2-mode"))
(autoload 'js2-mode "js2" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

(provide 'js2-mode-setup)
