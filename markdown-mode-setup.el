;; markdown-mode-setup.el
;;
;; Turn on and configure markdown-mode
;;
;; Mamading Ceesay, 2010-03-16
;;
;; http://github.com/evangineer/aquamacs-emacs-starter-kit

;;(load-file (concat kitfiles-dir "/site-lisp" "/markdown-mode/markdown-mode.el"))
;;(require 'markdown-mode)

(setq auto-mode-alist
      (append '(("\\.md" . markdown-mode)
                ("\\.mdwn" . markdown-mode)
                ("\\.markdown" . markdown-mode) auto-mode-alist))

(provide 'markdown-mode-setup)
