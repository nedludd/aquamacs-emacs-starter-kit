;; csharp-mode-setup.el
;;
;; Turn on and configure csharp-mode
;;
;; Mamading Ceesay, 2010-07-31
;;
;; http://github.com/evangineer/aquamacs-emacs-starter-kit

(add-to-list 'load-path
             (concat kitfiles-dir "/site-lisp" "/csharp-mode"))

(autoload 'csharp-mode "csharp-mode" "Major mode for editing C# code." t)

(setq auto-mode-alist
      (append '(("\\.cs$" . csharp-mode)) auto-mode-alist))

(provide 'csharp-mode-setup)
