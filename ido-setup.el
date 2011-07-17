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

;; Pull in recent files

; 50 files ought to be enough.
(setq recentf-max-saved-items 50)

;; Use ido for recentf
(defun ido-recentf-open ()
  "Use `ido-completing-read' to \\[find-file] a recent file"
  (interactive)
  (if (find-file (ido-completing-read "Find recent file: " recentf-list))
      (message "Opening file...")
    (message "Aborting")))

;; more useful.
(global-set-key (kbd "C-x C-r") 'ido-recentf-open)

(defun session-ido-find-file ()
  "Find a recent file using ido."
  (interactive)
   (let ((file (ido-completing-read "Choose recent file: " file-name-history nil t)))
     (when file
       (find-file file))))
(global-set-key (kbd "C-x f") 'session-ido-find-file)

(provide 'ido-setup)
