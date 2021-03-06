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


;; UTF-8 settings
(set-language-environment "UTF-8")
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-clipboard-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(modify-coding-system-alist 'process "*" 'utf-8)
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)



;; set path
(setenv "PATH" (concat
		"%GIT_HOME%\\usr\\bin" ";"
		(getenv "PATH")
		)
	)


(provide 'init-better-defaults)

