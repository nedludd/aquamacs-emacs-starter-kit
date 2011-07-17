;;{{{ Dired Stuff ................................. &dired ...

;; Run Dired in a single buffer
(require 'dired-single)
(require 'dired-x)

(defun my-dired-init ()
  "Bunch of stuff to run for dired, either immediately or when it's loaded."
  ;; <add other stuff here>
  (define-key dired-mode-map [return] 'dired-single-buffer)
  (define-key dired-mode-map [mouse-1] 'dired-single-buffer-mouse)
  (define-key dired-mode-map "^"
    (function
     (lambda nil (interactive) (dired-single-buffer ".."))))
  (lambda () (dired-omit-mode 1)))

;; if dired's already loaded, then the keymap will be bound
(if (boundp 'dired-mode-map)
    ;; we're good to go; just add our bindings
    (my-dired-init)
  ;; it's not loaded yet, so add our bindings to the load-hook
  (add-hook 'dired-load-hook 'my-dired-init))

;; Ask for a directory to dired
(global-set-key [(f5)] 'dired-single-magic-buffer)

;; Add a sort menu for dired
(add-hook 'dired-load-hook
    (lambda () (require 'dired-sort-menu)))

(add-hook 'dired-mode-hook
    (function (lambda ()
                  ;; Omit uninteresting files ("..", "*.elc", etc.)
                  (dired-omit-mode 1)
                  )))

(provide 'dired-setup)