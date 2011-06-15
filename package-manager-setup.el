
;; Load the ELPA package manager

(load-file (concat kitfiles-dir "/site-lisp" "/package/package.el"))
(require 'package)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

;; Now el-get
(add-to-list 'load-path (concat site-lisp-dir "/packages/el-get"))
(setq el-get-dir (concat site-lisp-dir "/packages"))
(require 'el-get)

(setq el-get-sources
      '(
	;; Recipes
	anything
	smex
	yaml-mode

	;; HTTP
	(:name dired-single       :type http      :url "http://www.northbound-train.com/emacs/dired-single.el" :load "dired-single.el")
	;; Emacswiki
	(:name anything-yaetags   :type emacswiki :load "anything-yaetags.el")
	(:name descbinds-anything :type emacswiki :load "descbinds-anything.el")
	)
      )

(el-get)

(provide 'package-manager-setup)