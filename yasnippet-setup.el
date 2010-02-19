;; yasnippet-setup.el
;;
;; Turn on and configure yasnippet
;; Add yasnippet-org-mode goodness
;;
;; Mamading Ceesay, 2010-02-17
;;
;; http://github.com/evangineer/aquamacs-emacs-starter-kit

;; add yasnippet to load path
(add-to-list 'load-path (concat kitfiles-dir "/site-lisp" "/yasnippet"))
(require 'yasnippet) ;; not yasnippet-bundle
(yas/initialize)

;; My elisp was sufficiently rusty to make this bit hard work getting right!
;; Got the solution from http://github.com/jmjeong/jmjeong-emacs/blob/master/jmjeong-yasnippet.el, thank you Jaemok Jeong!
(setq yas/root-directory
	(list (concat kitfiles-dir "/site-lisp" "/yasnippet/snippets")
	      (concat kitfiles-dir "/snippets" "/yasnippet-org-mode")
	      (concat kitfiles-dir "/snippets" "/yasnippet-licenses")))
;; Map `yas/load-directory' to every element
(mapc 'yas/load-directory yas/root-directory)

(provide 'yasnippet-setup)
