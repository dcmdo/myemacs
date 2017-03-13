
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/lisp/")
(require 'init-packages)
 

 




;;增强M-x

(setq enable-recursive-minibuffers t)
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "C-h f") 'counsel-describe-function)
(global-set-key (kbd "C-h v") 'counsel-describe-variable)





(tool-bar-mode -1);;关闭工具栏
(scroll-bar-mode -1);;关闭垂直滑动条
(global-linum-mode t);;全局行号显示
(setq inhibit-splash-screen t);;关闭初始窗口
;;打开配置文件
(defun open-my-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

;;f2打开配置文件
(global-set-key (kbd "<f2>") 'open-my-init-file)

;;改变光标样式
(setq-default cursor-type 'bar)
;;禁止生成备份文件
(setq make-backup-files nil)
(setq auto-save-default nil)
;;org模式下语法el高亮
(require 'org)
(setq org-src-fontify-natively t)

;;打开最近打开的文件
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 25)
;;C-x C-r 打开最近打开的文件
(global-set-key "\C-x\ \C-r" 'recentf-open-files)
;;删除选中编辑模式
(delete-selection-mode t)

;;打开时窗口最大化
(setq initial-frame-alist(quote((fullscreen . maximized))))
;;匹配括号
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)
;;显示当前行
(global-hl-line-mode t)



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-idle-delay 0.08)
 '(company-minimum-prefix-length 1)
 '(custom-safe-themes
   (quote
    ("c7a9a68bd07e38620a5508fef62ec079d274475c8f92d75ed0c33c45fbe306bc" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

