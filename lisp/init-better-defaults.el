(global-linum-mode 1)

(setq make-backup-files nil)

(recentf-mode t)
(setq recentf-max-menu-items 25)

(electric-indent-mode t)
(delete-selection-mode t)

(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)
(popwin-mode t)

;; config for ivh and swiper
(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)
(setq make-backup-files nil)
(provide 'init-better-defaults)
