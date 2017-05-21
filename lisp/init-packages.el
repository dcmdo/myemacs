;; cl - Common Lisp Extension
(require 'cl)

(when (>= emacs-major-version 24)
     (setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
		      ("melpa" . "http://elpa.emacs-china.org/melpa/"))))

;; 注意 elpa.emacs-china.org 是
;; Add Packages
 (defvar dongchunming/packages '(
		;; --- Auto-completion ---
		company
		;; --- Better Editor ---
		hungry-delete
		swiper
		counsel
		smartparens
		;; --- Major Mode ---
		js2-mode
		;; --- Minor Mode ---
		nodejs-repl
		;;exec-path-from-shell
		;; --- Themes ---
		monokai-theme
		;; solarized-theme
		popwin
		) "Default packages")

 (setq package-selected-packages dongchunming/packages)

 (defun dongchunming/packages-installed-p ()
     (loop for pkg in dongchunming/packages
	   when (not (package-installed-p pkg)) do (return nil)
	   finally (return t)))

 (unless (dongchunming/packages-installed-p)
     (message "%s" "Refreshing package database...")
     (package-refresh-contents)
     (dolist (pkg dongchunming/packages)
       (when (not (package-installed-p pkg))
	 (package-install pkg))))

;;开启hungry-delete插件
(require 'hungry-delete)
(global-hungry-delete-mode)

;;配置智能括号匹配
;;(add-hook 'emacs-lisp-mode-hook 'smartparens-mode)
(smartparens-global-mode t)

(ivy-mode 1)
(setq ivy-use-virtual-buffers t)

;;config js2-mode for js files
(setq auto-mode-alist
      (append
       '(("\\.js\\'" . js2-mode))
       auto-mode-alist))


;;全局补全模式
(global-company-mode t)

;;打开monokai 主题
(load-theme 'monokai 1)

(require 'popwin)
(popwin-mode t)

(sp-local-pair 'emacs-lisp-mode "'" nil :actions nil)

(provide 'init-packages)
