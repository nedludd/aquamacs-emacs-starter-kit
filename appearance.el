;; appearance.el
;;
;; Choose a theme, etc.
;;
;; Walter McGinnis, 2009-06-28
;; Mamading Ceesay, 2010-02-14
;;
;; http://github.com/walter/aquamacs-emacs-starter-kit
;; http://github.com/evangineer/aquamacs-emacs-starter-kit

;; Set default colors to green on black
;; will override this with theme below
(setq default-frame-alist
      '(
        (background-color . "black")
        (foreground-color . "green")
        ))

;; set up color theme of choice by uncommenting the one you want here
;; or simply using one of Aquamacs included themes
;; by only specifying it with line
;; (color-theme-your-chosen-theme's-name)
;; if you choose twilight or blackboard here, uncomment 
;; the relevant load and setting lines for the theme
(custom-set-variables '(aquamacs-styles-mode t))
; (load-file (concat kitfiles-dir "/site-lisp" "/twilight/color-theme-twilight.el"))
; (color-theme-twilight)
; (load-file (concat kitfiles-dir "/site-lisp" "/color-theme-zen-and-art/zen-and-art.el"))
; (color-theme-zen-and-art)
(load-file (concat kitfiles-dir "/site-lisp" "/color-theme-ir-black/color-theme-ir-black.el"))
(color-theme-ir-black)
; (load-file (concat kitfiles-dir "/site-lisp" "/blackboard.el"))
; (color-theme-blackboard)
; (load-file (concat kitfiles-dir "/site-lisp" "/sunburst.el"))
; (color-theme-sunburst)
; (load-file (concat kitfiles-dir "/site-lisp" "/hober2.el"))
; (color-theme-hober2)

(provide 'appearance)
