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

;;;;; IMPORTANT: put this commented code in ~/Library/Aquamacs Emacs/Preferences.el
;;;;; begin code for Preferences.el
;; Aquamacs Emacs Starter Kit
;; http://github.com/evangineer/aquamacs-emacs-starter-kit
;; set the kitfiles-dir variable to this directory
;; (setq kitfiles-dir (concat (file-name-directory
;;                     (or (buffer-file-name) load-file-name)) "/aquamacs-emacs-starter-kit"))
;;
;; set up our various directories to load
;; (add-to-list 'load-path kitfiles-dir)
;; (require 'init)
;;;;; begin code for Preferences.el

(setq site-lisp-dir (concat kitfiles-dir "/site-lisp"))
(add-to-list 'load-path site-lisp-dir)

;; Load package manager
(require 'package-manager-setup)

;;;;; Vendor libs

;; general coding/editing niceties
(require 'line-num)
(require 'whitespace)

;; Additional Modes
(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))

;; Mac OS X/iPhone oriented, thanks http://github.com/topfunky/emacs-starter-kit/topfunky.el
;; Applescript
(autoload 'applescript-mode "applescript-mode" "major mode for editing AppleScript source." t)
(setq auto-mode-alist
      (cons '("\\.applescript$" . applescript-mode) auto-mode-alist))
;; xcode/cocoa specific
(require 'objc-c-mode)
(require 'xcode)
(define-key objc-mode-map [(meta r)] 'xcode-compile)
(define-key objc-mode-map [(meta K)] 'xcode-clean)
(add-hook 'c-mode-common-hook
          (lambda()
            (local-set-key  [(meta O)] 'ff-find-other-file)))
(add-hook 'c-mode-common-hook
          (lambda()
            (local-set-key (kbd "C-c <right>") 'hs-show-block)
            (local-set-key (kbd "C-c <left>")  'hs-hide-block)
            (local-set-key (kbd "C-c <up>")    'hs-hide-all)
            (local-set-key (kbd "C-c <down>")  'hs-show-all)
            (hs-minor-mode t)))         ; Hide and show blocks

;;;;; end Vendor libs

;;;;; Aquamacs Emacs Starter Kit specific customizations
(require 'adjust-path)
(require 'appearance)
(require 'auto-complete-setup)
(require 'csharp-mode-setup)
(require 'go-mode-setup)
(require 'ido-setup)
(require 'js2-mode-setup)
(require 'markdown-mode-setup)
(require 'org-mode-stuff)
(require 'override-aquamacs-to-be-more-emacsy)
(require 'prefer-utf)
(require 'rst-mode-setup)
(require 'twit-setup)
(require 'useful-functions)
(require 'yasnippet-setup)
;; contains whitespace config for various modes and more
(require 'misc-mode-tweaks)

;;;;; end Aquamacs Emacs Starter Kit specific customizations

(provide 'init)
