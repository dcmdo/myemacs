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

(provide 'init-better-defaults.el)
