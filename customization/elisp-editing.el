;; Turn on lispy (parEdit like) for lisp modes
(autoload 'lispy-mode "lispy" "Turn on pseudo-structural editing of Lisp code." t)
(add-hook 'emacs-lisp-mode-hook       #'lispy-mode)
(add-hook 'eval-expression-minibuffer-setup-hook #'lispy-mode)
(add-hook 'ielm-mode-hook             #'lispy-mode)
(add-hook 'lisp-mode-hook             #'lispy-mode)
(add-hook 'lisp-interaction-mode-hook #'lispy-mode)
(add-hook 'scheme-mode-hook           #''lispy-mode)

;; eldoc-mode shows documentation in the minibuffer when writing code
;; http://www.emacswiki.org/emacs/ElDoc
(add-hook 'emacs-lisp-mode-hook 'turn-on-eldoc-mode)
(add-hook 'lisp-interaction-mode-hook 'turn-on-eldoc-mode)
(add-hook 'ielm-mode-hook 'turn-on-eldoc-mode)
