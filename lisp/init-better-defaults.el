(setq ring-bell-function 'ignore);;禁止声音
(global-linum-mode t);;全局行号显示
(global-auto-revert-mode t)
;;缩写替换
(abbrev-mode t)
(define-abbrev-table 'global-abbrev-table '(
											("dcm" "dongchunming")
											))

;;打开最近打开的文件
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 25)

;; 设置缩进
(setq c-basic-offset 4)
(setq indent-tabs-mode nil)
(setq default-tab-width 4)
(setq tab-width 4)
(setq tab-stop-list ())
(loop for x downfrom 40 to 1 do
      (setq tab-stop-list (cons (* x 4) tab-stop-list)))
;;禁止生成备份文件
(setq make-backup-files nil)
;;禁止自动保存
(setq auto-save-default nil)
;;显示文件名和大小
(setq frame-title-format "%b %l")
;;删除选中编辑模式
(delete-selection-mode t)

;;匹配括号
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

(defun indent-buffer()
  (interactive)
  (indent-region (point-min)(point-max)))

(defun indent-region-or-buffer()
  (interactive)
  (save-excursion
	(if(region-active-p)
		(progn
		  (indent-region(region-beginning) (region-end))
		  (message "Indent selected region"))
	  (progn
		(indent-buffer)
		(message "Indent buffer.")))))

;;补全设置
(setq hippie-expand-try-functions-list '(try-expand-dabbrev
										 try-expand-dabbrev-all-buffers
										 try-expand-dabbrev-from-kill
										 try-complete-file-name-partially
										 try-complete-file-name
										 try-expand-all-abbrevs
										 try-expand-list
										 try-expand-line
										 try-complete-lisp=symbol-partially
										 try-complete-lisp-symbol))

(fset 'yes-or-no-p' 'y-or-n-p)


(setq dired-recursive-copies 'always)
(setq dired-recursive-deletes 'always)
(put 'dired-find-alternate-file 'disabled nil)
;;(with-eval-after-load)
;;	(define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file)

(require 'dired-x)


(setq dired-dwim-target t)





(provide 'init-better-defaults.el)
