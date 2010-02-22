;; js2-mode-setup.el
;;
;; Turn on and configure js2-mode
;;
;; Mamading Ceesay, 2010-02-21
;;
;; http://github.com/evangineer/aquamacs-emacs-starter-kit

(add-to-list 'load-path 
             (concat kitfiles-dir "/site-lisp" "/js2-mode"))
(autoload 'js2-mode "js2-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

;; make js2-mode tooltips work
;; see http://nflath.com/2009/09/flymake/
(setq help-at-pt-timer-delay 0)
(help-at-pt-set-timer)

(provide 'js2-mode-setup)
