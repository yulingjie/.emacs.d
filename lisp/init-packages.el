;;  __        __             __   ___
;; |__)  /\  /  ` |__/  /\  / _` |__
;; |    /~~\ \__, |  \ /~~\ \__> |___
;;                      __   ___        ___      ___
;; |\/|  /\  |\ |  /\  / _` |__   |\/| |__  |\ |  |
;; |  | /~~\ | \| /~~\ \__> |___  |  | |___ | \|  |
(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
			   ("melpa" . "http://elpa.emacs-china.org/melpa/"))))

;; cl - Common Lisp Extension
(require 'cl)

;; Add Packages
(defvar my/packages '(
		      ;; --- Auto-completion ---
		      company
		      ;; --- Better Editor ---
		      smooth-scrolling
		      hungry-delete
		      swiper
		      counsel
		      smartparens
		      popwin
		      recentf
		      monokai-theme
		      ycmd
		      company-ycmd
		      flycheck-ycmd
		      neotree
		      csharp-mode
		      ;;smex
		      ;; --- Major Mode ---
		      ;;js2-mode
		     ;; markdown-mode
		      ;; ...
		      )
  )


 (defun my/packages-installed-p ()
     (loop for pkg in my/packages
           when (not (package-installed-p pkg)) do (return nil)
           finally (return t)))

 (unless (my/packages-installed-p)
     (message "%s" "Refreshing package database...")
     (package-refresh-contents)
     (dolist (pkg my/packages)
       (when (not (package-installed-p pkg))
         (package-install pkg))))
(global-company-mode 1)
(setq package-selected-packages my/packages)
(require 'hungry-delete)
(global-hungry-delete-mode)

(require 'smartparens-config)
;;(add-hook 'emacs-lisp-mode-hook 'smartparens-mode)
;; smex initialize
;;(require 'smex)
;;(smex-initialize)
;;(global-set-key (kbd "M-x") 'smex)
;;(global-set-key (kbd "M-X") 'smex-major-mode-commands)



;; config for popwin
(require 'popwin)

(require 'dired-x)
(load-theme 'monokai 1)

(require 'recentf)

(require 'ycmd)
(add-hook 'after-init-hook #'global-ycmd-mode)
;; ycmd
;;(set-variable 'ycmd-server-command
;;	      '("python" "/home/ylj/.emacs.d/ycmd/ycmd"))
(set-variable 'ycmd-server-command
	      '("D:\\Python27\\python.exe" "E:\\Documents\\.emacs.d\\ycmd\\ycmd"))
(set-variable 'ycm_global_ycm_extra_conf "E:\\Documents\\.emacs.d\\.ycm_extra_conf.py")

(set-variable 'ycm_server_keep_logfiles 1)

(set-variable 'ycmd-startup-timeout 15)
;;(set-variable 'ymc-extra-conf-whitelist '("~/projects/*"))

(require 'company-ycmd)
(company-ycmd-setup)

(require 'flycheck-ycmd)
(flycheck-ycmd-setup)

(require 'neotree)
;; 文件末尾
(provide 'init-packages)

