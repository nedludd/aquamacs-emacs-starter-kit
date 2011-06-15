;; Set up anything.  Like Quicksilver or Gnome-Do
;;(add-to-list 'load-path (concat  "anything"))
(require 'anything-match-plugin)
;;(require 'anything-show-completion)
(require 'anything-config)

(setq anything-selection-face 'highline-face)

(defun my-anything ()
  (interactive)
  (anything-other-buffer

   '(anything-c-source-buffers+
     anything-c-source-ffap-guesser
     anything-c-source-file-name-history
     anything-c-source-recentf
     anything-c-source-files-in-current-dir+
     anything-c-source-etags-select
     )
   " *my-anything*"))
(global-set-key (kbd "C-'") 'my-anything)

(defun my-anything-info ()
  (interactive)
  (anything-other-buffer
   '(anything-c-source-man-pages
     anything-c-source-google-suggest)
   " *my-anything-info*"))
(global-set-key (kbd "C-c '") 'my-anything-info)

;; Replaces describe-bindings.  Do "C-h b" or "C-x C-h"
(require 'descbinds-anything)
(descbinds-anything-install)

(require 'anything-yaetags)
(add-to-list 'anything-sources 'anything-c-source-yaetags-select)
(global-set-key (kbd "M-.") 'anything-yaetags-find-tag)

(provide 'anything-setup)