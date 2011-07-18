;; auto-complete-setup.el
;;
;; Turn on and configure auto-complete
;;
;; Mamading Ceesay, 2010-02-17
;;
;; http://github.com/evangineer/aquamacs-emacs-starter-kit

;; add auto-complete to load path
;;(add-to-list 'load-path (concat kitfiles-dir "/site-lisp" "/auto-complete"))
;;(require 'auto-complete)
;;(require 'auto-complete-config)

;; Use it everywhere
(global-auto-complete-mode t)

;; use C-n/C-p to select candidates
(define-key ac-completing-map "\C-n" 'ac-next)
(define-key ac-completing-map "\C-p" 'ac-previous)

;; start completion when 3 characters have been entered
(setq ac-auto-start 3)

;; use tab to trigger auto-complete
(ac-set-trigger-key "TAB")

(provide 'auto-complete-setup)
