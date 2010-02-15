;; org-mode-stuff.el
;;
;; Convenience settings, etc. for org mode.
;; Check out the manual at http://orgmode.org/manual/ for details.
;;
;; Walter McGinnis, 2009-06-30
;; Mamading Ceesay, 2010-02-15
;;
;; http://github.com/walter/aquamacs-emacs-starter-kit
;; http://github.com/evangineer/aquamacs-emacs-starter-kit

;; use our "fresh from git" version of org-mode rather than the ancient version 
;; shipped with Aquamacs
(add-to-list 'load-path (concat kitfiles-dir "/site-lisp" "/org-mode/lisp"))
(require 'org-install)

;; The following lines are always needed.  Choose your own keys.
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)

;; use clean view
(setq org-hide-leading-stars t) 

;; include diary contents in agenda and default to a nine day view
(setq org-agenda-include-diary t)
(setq org-agenda-ndays 9)

;; add timestamps to state changes for TODOs
(setq org-todo-keywords
       '((sequence "TODO(t!)" "WAIT(w@/!)" "|" "DONE(d@/!)" "CANCELED(c@)")))

;; set up some tags with shortcuts
(setq org-tag-alist '(("@work" . ?w) ("@home" . ?h) ("@computer" . ?c) ("@phone" . ?p) ("@errands" . ?e)))

;; add remember to load path
(add-to-list 'load-path (concat kitfiles-dir "/site-lisp" "/remember"))

;; tell org to load and integrate remember
(org-remember-insinuate)

(provide 'org-mode-stuff)
