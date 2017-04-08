(package-initialize)

(add-to-list 'load-path "~/.emacs.d/lisp/")

;; Package Managerment
;; ------------------------------------------
(require 'init-packages)
(require 'recentf)
(recentf-mode t)
(setq recentf-max-menu-items 25)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

(global-linum-mode 1)



(setq make-backup-files nil)

;;(add-to-list my/packages 'monokai-theme)



;; set cursor
(setq-default cursor-type 'bar)
;; forbiden backup file
(setq make-backup-files nil)
(electric-indent-mode t)
(delete-selection-mode t)

(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (smex monokai-theme company))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
