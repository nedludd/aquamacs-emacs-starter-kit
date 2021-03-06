;;; remember-experimental --- Highly dangerous stuff

;; Copyright (C) 2003 Sandra Jean Chua

;; Author: Sacha Chua <sacha@free.net.ph>
;; Keywords: data memory todo pim
;; URL: http://gna.org/projects/remember-el/

;; This file is not part of GNU Emacs.

;; This is free software; you can redistribute it and/or modify it under
;; the terms of the GNU General Public License as published by the Free
;; Software Foundation; either version 2, or (at your option) any later
;; version.
;;
;; This is distributed in the hope that it will be useful, but WITHOUT
;; ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
;; FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
;; for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to the
;; Free Software Foundation, Inc., 59 Temple Place - Suite 330, Boston,
;; MA 02111-1307, USA.

;;; Commentary:

;; Experimental functions can break any time.

;;; Code:

(require 'planner)
(defvar remember-mail-recipient nil
  "People to mail remember entries to.
If this is a string, mail will be sent to that recipient.
If this is a function, the function should return a list of e-mail addresses.")

(setq remember-mail-recipient "sacha@free.net.ph")
(defvar remember-blog-title "Sacha's journal" "Text to prepend to subjects.")
(defun remember-mail-subject (title)
  "Return a reasonable subject based on TITLE."
  (concat remember-blog-title (format-time-string " (%Y.%m.%d %R): ") title))

(defun remember-compose-mail (title entry)
  "Compose a message for TITLE containing ENTRY."
  (compose-mail "Undisclosed recipients" (remember-mail-subject title)
                '(("Bcc" . "harvey@adphoto.com.ph")))
  (rfc822-goto-eoh)
  (forward-line 1)
  (insert title "\n"
          "----------------------------------------------------------------\n"
          entry "\n"
          "\n"
          "This message was automatically generated by remember.el.\n"
          "Blog is at http://sacha.free.net.ph/notebook/wiki/today.php\n"
          "and this entry is at http://sacha.free.net.ph/notebook/wiki/"
          (planner-today) ".php .\n"))

(remember-compose-mail "Title" "Entry goes here.")
(provide 'remember-experimental)

;;; remember-experimental.el ends here
