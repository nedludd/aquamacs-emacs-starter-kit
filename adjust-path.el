;; adjust-path.el
;;
;; Add MacPorts to PATH.
;; Assumes you install MacPorts in default /opt location.
;;
;; Walter McGinnis, 2009-06-28
;; Mamading Ceesay, 2010-02-14
;;
;; http://github.com/walter/aquamacs-emacs-starter-kit
;; http://github.com/evangineer/aquamacs-emacs-starter-kit

(setenv "PATH" (concat (getenv "PATH") "/opt/local/bin" ":" ))

(provide 'adjust-path)
