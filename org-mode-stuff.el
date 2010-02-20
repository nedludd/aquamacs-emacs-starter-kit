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

;; use our "fresh from git" version of org-mode rather than the ancient 
;; version shipped with Aquamacs
;; NB: This only works if you go into the org-mode directory and run 
;; "make all" first!
(add-to-list 'load-path 
	(concat kitfiles-dir "/site-lisp" "/org-mode/lisp"))
(require 'org-install)

(add-to-list 'Info-default-directory-list 
	(concat kitfiles-dir "/site-lisp" "/org-mode/doc"))

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
(setq org-tag-alist 
	'(("@work" . ?w) ("@home" . ?h) ("@computer" . ?c) 
	  ("@phone" . ?p) ("@errands" . ?e)))

;; add remember to load path
(add-to-list 'load-path (concat kitfiles-dir "/site-lisp" "/remember"))

;; tell org to load and integrate remember
(org-remember-insinuate)

;; See Journaling with Emacs OrgMode
;; http://metajack.im/2009/01/01/journaling-with-emacs-orgmode/
;; NB: Be sure to define org-journal-file in your Preferences.el file as mentioned in the article.
(defvar org-journal-date-format "%d-%m-%Y"  
  "Date format string for journal headings.")  
  
(defun org-journal-entry ()  
  "Create a new diary entry for today or append to an existing one."  
  (interactive)  
  (switch-to-buffer (find-file org-journal-file))  
  (widen)  
  (let ((today (format-time-string org-journal-date-format)))  
    (beginning-of-buffer)  
    (unless (org-goto-local-search-headings today nil t)  
      ((lambda ()   
         (org-insert-heading)  
         (insert today)  
         (insert "\n\n  \n"))))  
    (beginning-of-buffer)  
    (org-show-entry)  
    (org-narrow-to-subtree)  
    (end-of-buffer)  
    (backward-char 2)  
    (unless (= (current-column) 2)  
      (insert "\n\n  "))))  

;; custom keybindings for org-mode
;; http://www.tychoish.com/2009/09/useful-emacs-and-orgmode-hacks/
(global-set-key (kbd "C-c o a") 'org-agenda-list)
(global-set-key (kbd "C-c o t") 'org-todo-list)
(global-set-key (kbd "C-c o p") 'org-insert-property-drawer)
(global-set-key (kbd "C-c o d") 'org-date)
(global-set-key (kbd "C-c o j") 'org-journal-entry)
(global-set-key (kbd "C-c r") 'org-remember)
(global-set-key (kbd "C-c a") 'org-agenda)

(provide 'org-mode-stuff)
