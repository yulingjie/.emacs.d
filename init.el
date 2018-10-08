(package-initialize)

(add-to-list 'load-path "~/.emacs.d/lisp/")

;; Package Managerment
;; ------------------------------------------
(require 'init-packages)
(require 'init-ui)
;;(require 'init-org)
(require 'init-better-defaults)
(require 'init-keybindings)
;;(require 'recentf)

(setq custom-file (expand-file-name "lisp/custom.el" user-emacs-directory))
(load-file custom-file)

;;(add-to-list my/packages 'monokai-theme)

(defun run-bash ()
  (interactive)
  (let ((shell-file-name "%GIT_HOME%\\bin\\bash.exe"))
    (shell "*bash*")))
(defun run-cmdexe ()
  (interactive)
  (let ((shell-file-name "cmd.exe"))
    (shell "*cmd.exe*")))



;; forbiden backup file
;;(setq make-backup-files nil)

