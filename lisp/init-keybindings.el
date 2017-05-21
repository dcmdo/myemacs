;;增强M-x

(setq enable-recursive-minibuffers t)
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "C-h f") 'counsel-describe-function)
(global-set-key (kbd "C-h v") 'counsel-describe-variable)

;;C-x C-r 打开最近打开的文件
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

;;f2打开配置文件
(global-set-key (kbd "<f2>") 'open-my-init-file)
;;f3打开快捷键绑定配置文件
(global-set-key (kbd "<f3>") 'open-my-init-keybindings)

(global-set-key (kbd "C-c p f") 'counsel-git)
;;缩进
(global-set-key (kbd "C-M-\\") 'indent-region-or-buffer)
;;补全
(global-set-key (kbd "s-/") 'hippie-expand)

(provide 'init-keybindings)
