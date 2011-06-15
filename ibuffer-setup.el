(autoload 'ibuffer "ibuffer" "List buffers." t)
(setq ibuffer-sorting-mode 'recency)
(setq ibuffer-show-empty-filter-groups nil)

(global-set-key (kbd "C-x C-b") 'ibuffer)

(setq ibuffer-saved-filter-groups
      (quote (("default"
               ("dired   " (mode . dired-mode))
               ("shell   " (or
                            (mode . eshell-mode)
                            (mode . shell-mode)))
               ("music   " (or
                            (name . "^\\*EMMS")
                            (mode . emms-mode)))
               ("perl    " (mode . cperl-mode))
               ("ruby    " (or
                            (filename . "erb$")
                            (filename . "rhtml$")
                            (mode . ruby-mode)
                            (mode . yaml-mode)
                            (mode . inferior-ruby-mode)
                            (name . "^\\*rails\\*$")
                            (name . "^\\*RServer\\*$")))
               ("erc     " (mode . erc-mode))
               ("man     " (or
                            (mode . woman-mode)
                            (mode . man-mode)))
               ("organize" (or
                           (name . "^\\*Calendar\\*$")
                           (name . "^diary$")
                           (mode . muse-mode)
                           (mode . org-mode)
                           (mode . remember-mode)))
               ("web     " (or
                            (mode . js2-mode)
                            (mode . javascript-mode)
                            (mode . espresso-mode)
                            (filename . "js$")
                            (mode . haml-mode)
                            (mode . nxhtml-mode)
                            (mode . sass-mode)
                            (mode . scss-mode)
                            (mode . css-mode)))
               ("emacs   " (or
                            (mode . emacs-lisp-mode)
                            (name . "^\\*scratch\\*$")
                            (name . "^\\*Messages\\*$")))))))

(add-hook 'ibuffer-mode-hook
          (lambda ()
            (ibuffer-switch-to-saved-filter-groups "default")))

(provide 'ibuffer-setup)