; init.el
;; Author maxorcist
;;
;; Notes:
;; This is meant solely for clojure development.
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

(defvar my-packages 
  '(
    clojure-mode
    clojure-mode-extra-font-locking
    cider
    counsel
    ivy
    flx
    lispy
    rainbow-delimiters
    magit

    ) "a list of packages to ensure are installed at launch.")

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

;;;;
;; Customization
;;;;
(add-to-list 'load-path "~/.emacs.d/customization")

;; Sets up exec-path-from-shell so that Emacs will use the correct
;; environment variables
(load "shell-integration.el")

;; These customizations make it easier for you to navigate files,
;; switch buffers, and choose options from the minibuffer.
(load "navigation.el")

;; These customizations change the way emacs looks and disable/enable
;; some user interface elements
(load "ui.el")

;; These customizations make editing a bit nicer.
(load "editing.el")

;; Hard-to-categorize customizations
(load "misc.el")

;; For editing lisps
(load "elisp-editing.el")

;; Langauage-specific
(load "setup-clojure.el")
(load "setup-js.el")

;; THis is where user defined configuration go!

(global-set-key (kbd "M-p") (kbd "C-u 10 C-p"))
(global-set-key (kbd "M-n") (kbd "C-u 10 C-n"))

(eval-after-load 'lispy
  '(define-key lispy-mode-map (kbd "M-n") nil))
