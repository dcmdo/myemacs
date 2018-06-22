(tool-bar-mode -1);;关闭工具栏
(scroll-bar-mode -1);;关闭垂直滑动条
(global-linum-mode t);;全局行号显示
(setq inhibit-splash-screen t);;关闭初始窗口

;;改变光标样式
(setq-default cursor-type 'bar)
;;显示当前行
(global-hl-line-mode t)
;;打开时窗口最大化
(setq initial-frame-alist(quote((fullscreen . maximized))))

(provide 'init-ui)
