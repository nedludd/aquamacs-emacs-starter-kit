;; override-emacs-to-be-more-vimlike.el
;;
;; Modify default Emacs behaviours to suit Vim migrants like myself.
;;
;; Mamading Ceesay, 2010-02-17
;;
;; http://github.com/evangineer/aquamacs-emacs-starter-kit


;; tweaks for making emacs as vim-like as possible
;; taken from http://stackoverflow.com/questions/98225/vim-macros-dont-work-when-using-viper-vimpulse-in-emacs
(define-key viper-vi-global-user-map [(delete)] 'delete-char)
(define-key viper-vi-global-user-map "/" 'isearch-forward-regexp)
(define-key viper-vi-global-user-map "?" 'isearch-backward-regexp)
(define-key viper-vi-global-user-map "\C-wh" 'windmove-left)
(define-key viper-vi-global-user-map "\C-wj" 'windmove-down)
(define-key viper-vi-global-user-map "\C-wk" 'windmove-up)
(define-key viper-vi-global-user-map "\C-wl" 'windmove-right)
(define-key viper-vi-global-user-map "\C-wv" '(lambda () (interactive)
                                                (split-window-horizontally)
                                                (other-window 1)
                                                (switch-to-buffer (other-buffer))))

(define-key viper-visual-mode-map "F" 'viper-find-char-backward)
(define-key viper-visual-mode-map "t" 'viper-goto-char-forward)
(define-key viper-visual-mode-map "T" 'viper-goto-char-backward)
(define-key viper-visual-mode-map "e" '(lambda ()
                                         (interactive)
                                         (viper-end-of-word 1)
                                         (viper-forward-char 1)))

(push '("only" (delete-other-windows)) ex-token-alist)
(push '("close" (delete-window)) ex-token-alist)

(provide 'override-emacs-to-be-more-vimlike)
