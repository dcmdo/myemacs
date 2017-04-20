(setq ring-bell-function 'ignore)
(global-linum-mode t);;全局行号显示
(global-auto-revert-mode t)

(abbrev-mode t)
(define-abbrev-table 'global-abbrev-table '(
					    ("dcm" "dongchunming")

;;打开最近打开的文件
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 25)
;;C-x C-r 打开最近打开的文件
(global-set-key "\C-x\ \C-r" 'recentf-open-files)))
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
(setq auto-save-default nil)

(provide 'init-better-defaults.el)
