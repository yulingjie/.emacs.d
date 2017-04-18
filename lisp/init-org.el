;; config for org mode
(require 'org)
(setq org-agenda-files '("~/.emacs.d/org"))
(setq org-directory "~/.emacs.d/org")
(global-set-key (kbd "C-c a") 'org-agenda)
(define-key global-map "\C-cc" 'org-capture)


(setq org-todo-keywords
      '((sequence "TODO(t)" "STARTED(s)" "WAITING(w)" "APPT(a)" "|" "DONE(d)" "CANCELED(c)" "DEFERRED(f)")))

(setq org-tag-alist '(("@work" . ?w) ("readbook" . ?b) ("readenglish" . ?e) ("code" . ?c)))
(setq org-capture-templates
      '(("n" "New" entry (file+headline (concat org-directory "/inbox.org") "Ideas")
	 "* IDEA %?  %U\n%i")
        ("t" "Todo" entry (file+headline (concat org-directory "/task.org") "Tasks")
	 "* TODO %^{Brief Description} %^g\n%? Added: %U")
	)
      )
(setq org-refile-targets (quote (("task.org" :level . 1)
				 )))

;; UTF-8 settings
(set-language-environment "UTF-8")
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-clipboard-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(modify-coding-system-alist 'process "*" 'utf-8)

(provide 'init-org)
