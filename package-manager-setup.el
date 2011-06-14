
;; Load the ELPA package manager

(load-file (concat kitfiles-dir "/site-lisp" "/package/package.el"))
(require 'package)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

;; Now el-get
(add-to-list 'load-path (concat site-lisp-dir "/el-get"))
(setq el-get-dir (concat site-lisp-dir "/packages"))
(require 'el-get)

(setq el-get-sources
      '(
	;; Recipes
	yaml-mode
	)
      )

(el-get)

(provide 'package-manager-setup)