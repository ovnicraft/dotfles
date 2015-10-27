;; PATH
(add-to-list 'exec-path "/usr/local/bin/")

;; melpa pgks
(require 'package) ;; You might already have this line
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))

;; flymake-pyflakes
;;(require 'flycheck-pyflakes)
(add-hook 'python-mode-hook 'flycheck-mode)

;; special keys osx
(global-set-key (kbd "M-s-2") "@")
(global-set-key (kbd "M-s-3") "#")
(global-set-key (kbd "M-+") "]")
(global-set-key (kbd "M-ç") "}")
(global-set-key (kbd "M-s-1") "|")
(global-set-key (kbd "M-º") "\\")

(package-initialize)
;; auto-complete
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/elpa/auto-complete-20150618.1949/dict/")
(ac-config-default)

;;po-mode
(add-to-list 'load-path "/usr/local/Cellar/gettext/0.19.6/share/emacs/site-lisp/")

(modify-coding-system-alist 'file "\\.po\\'\\|\\.po\\."
                            'po-find-file-coding-system)
(autoload 'po-find-file-coding-system "po-mode")

;; virtualenv
(require 'virtualenvwrapper)
(setq venv-location "/Users/ovnicraft/.virtualenvs")
(venv-initialize-interactive-shells)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
