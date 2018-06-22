;增强M-x

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

;;f4打开插排配置文件
(global-set-key (kbd "<f4>") 'open-my-init-packages)


;;(global-set-key (kbd "C-c p f") 'counsel-git)
;;缩进
(global-set-key (kbd "C-M-\\") 'indent-region-or-buffer)
;;补全
(global-set-key (kbd "s-/") 'hippie-expand)
;;occur 模式
(global-set-key (kbd "M-s o") 'occur-dwin)

(global-set-key (kbd "M-s i") 'counsel-imenu)
;;扩展选择
(global-set-key (kbd "C-=") 'er/expand-region)

(global-set-key (kbd "C-;") 'iedit-mode)

(global-set-key (kbd "C-c a") 'org-agenda)
;;org templates
(global-set-key (kbd "C-c r") 'org-capture)

;;(with-eval-after-load 'dired
;;  (define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file))

(with-eval-after-load 'company
  (define-key company-active-map (kbd "M-n") nil)
  (define-key company-active-map (kbd "M-p") nil)
  (define-key company-active-map (kbd "C-n") #'company-select-next)
  (define-key company-active-map (kbd "C-p") #'company-select-previous))

(js2r-add-keybindings-with-prefix "C-c C-m")

(global-set-key (kbd "C-c t i") 'my-toggle-web-indent)

;;(global-set-key (kbd "C-c p s") 'helm-do-ag-project-root)

;;(global-set-key (kbd "H-w") #'aya-create)
;;(global-set-key (kbd "H-y") #'aya-expand)

(evil-leader/set-key
  "ff" 'find-file
  "fr" 'recentf-open-files
  "bb" 'switch-to-buffer
  "bk" 'kill-buffer
  "0"  'select-window-0
  "1"  'select-window-1
  "2"  'select-window-2
  "3"  'select-window-3
  "w/" 'split-window-right
  "w-" 'split-window-below
  ":"  'counsel-M-x
  "wm" 'delete-other-windows
  )

(define-key evil-normal-state-map (kbd "//") 'evilnc-comment-or-uncomment-lines)
(define-key evil-visual-state-map (kbd "//") 'evilnc-comment-or-uncomment-lines)
(provide 'init-keybindings)
