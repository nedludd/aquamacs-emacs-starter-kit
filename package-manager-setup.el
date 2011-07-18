
;; Load the ELPA package manager

(load-file (concat kitfiles-dir "/site-lisp" "/package/package.el"))
(require 'package)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

;; Now el-get
(add-to-list 'load-path (concat site-lisp-dir "/packages/el-get"))
(setq el-get-dir (concat site-lisp-dir "/packages/"))
(require 'el-get)

;; Put your own recipes here.  (Contains a magit recipe since the original one does not work for Aquamacs)
(add-to-list 'el-get-recipe-path (concat kitfiles-dir "/site-lisp/el-get-recipes"))

(setq el-get-sources
      '(
	;; Recipes
	anything
	auto-complete
	magit
	markdown-mode
	nxhtml
	org-mode
	rainbow-mode
	smex
	yaml-mode
	yasnippet

	;; Git
	(:name twilight           :type git       :url "https://github.com/nedludd/twilight-emacs")

	;; HTTP
	(:name dired-single       :type http      :url "http://www.northbound-train.com/emacs/dired-single.el" :load "dired-single.el")

	;; Emacswiki
	(:name anything-yaetags   :type emacswiki :load "anything-yaetags.el")
	(:name descbinds-anything :type emacswiki :load "descbinds-anything.el")
	)
      )

(el-get)

(provide 'package-manager-setup)
