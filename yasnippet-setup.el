;; yasnippet-setup.el
;;
;; Turn on and configure yasnippet
;; Add yasnippet-org-mode goodness
;;
;; Mamading Ceesay, 2010-02-17
;;
;; http://github.com/evangineer/aquamacs-emacs-starter-kit

;; add yasnippet to load path
;;(add-to-list 'load-path (concat kitfiles-dir "/site-lisp" "/yasnippet"))
;;(require 'yasnippet) ;; not yasnippet-bundle
(yas/initialize)

;; My elisp was sufficiently rusty to make this bit hard work getting right!
;; Got the solution from http://github.com/jmjeong/jmjeong-emacs/blob/master/jmjeong-yasnippet.el, thank you Jaemok Jeong!
;;(setq yas/root-directory
;;      (list (concat kitfiles-dir "/site-lisp" "/yasnippet/snippets")
;;            (concat kitfiles-dir "/snippets" "/yasnippet-org-mode")))
;; Map `yas/load-directory' to every element
;;(mapc 'yas/load-directory yas/root-directory)

;; make js2-mode co-exist peacefully with yasnippet
;; see http://blog.tuxicity.se/emacs/javascript/js2-mode/yasnippet/2009/06/14/js2-mode-and-yasnippet.html
;; (eval-after-load 'js2-mode
;;  '(progn
;;     (define-key js2-mode-map (kbd "TAB") (lambda()
;;                                            (interactive)
;;                                            (let ((yas/fallback-behavior 'return-nil))
;;                                              (unless (yas/expand)
;;                                                (indent-for-tab-command)
;;                                                (if (looking-back "^\s*")
;;                                                    (back-to-indentation))))))))

(provide 'yasnippet-setup)
