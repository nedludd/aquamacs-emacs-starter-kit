;; init.el
;;
;; Trigger loading of Aquamacs Emacs Starter Kit customizations, etc.
;; Inspired by http://github.com/technomancy/emacs-starter-kit/.
;;
;; Walter McGinnis, 2009-06-28
;;
;; http://github.com/walter/aquamacs-emacs-starter-kit
;;
;; Mamading Ceesay, 2010-02-14
;;
;; http://github.com/evangineer/aquamacs-emacs-starter-kit
;;
;; Tim Hermans, 2011-06-14
;;
;; http://github.com/nedludd/aquamacs-emacs-starter-kit

;;;;; IMPORTANT: put this commented code in ~/Library/Aquamacs Emacs/Preferences.el
;;;;; begin code for Preferences.el
;;;; Aquamacs Emacs Starter Kit
;;;; http://github.com/nedludd/aquamacs-emacs-starter-kit
;;;; set the kitfiles-dir variable to this directory
;; (setq kitfiles-dir (concat (file-name-directory
;;                    (or (buffer-file-name) load-file-name)) "/aquamacs-emacs-starter-kit"))
;;;; set up our various directories to load
;; (add-to-list 'load-path kitfiles-dir)
;; (require 'init)
;;;;; end code for Preferences.el

;; The directory for all addons and third party packages
(setq site-lisp-dir (concat kitfiles-dir "/site-lisp"))
(add-to-list 'load-path site-lisp-dir)

(setq settings-dir (concat kitfiles-dir "/settings/"))

;; Load package manager
(require 'package-manager-setup)

;;;;; Vendor libs

;; general coding/editing niceties
(require 'line-num)
(require 'whitespace)

;;;;; end Vendor libs

;;;;; Aquamacs Emacs Starter Kit specific customizations
(require 'adjust-path)
(require 'appearance)
(require 'auto-complete-setup)
(require 'csharp-mode-setup)
(require 'go-mode-setup)
(require 'smex-setup)
(require 'ido-setup)
(require 'js2-mode-setup)
(require 'markdown-mode-setup)
(require 'org-mode-stuff)
(require 'override-aquamacs-to-be-more-emacsy)
(require 'prefer-utf)
(require 'useful-functions)
(require 'yasnippet-setup)
;; contains whitespace config for various modes and more
(require 'misc-mode-tweaks)

;;;;; end Aquamacs Emacs Starter Kit specific customizations

(provide 'init)
