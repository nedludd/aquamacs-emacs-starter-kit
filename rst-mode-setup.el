;; rst-mode-setup.el
;;
;; Turn on and configure rst-mode
;;
;; Mamading Ceesay, 2010-02-26
;;
;; http://github.com/evangineer/aquamacs-emacs-starter-kit

(load-file (concat kitfiles-dir "/site-lisp" "/rst-mode/rst.el"))
(require 'rst)

(setq auto-mode-alist
      (append '(("\\.rst$" . rst-mode)
                ("\\.rest$" . rst-mode)) auto-mode-alist))

(provide 'rst-mode-setup)
