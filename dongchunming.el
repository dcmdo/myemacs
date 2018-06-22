
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/lisp/")

;;打开配置文件
(defun open-my-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))
(defun open-my-init-keybindings()
  (interactive)
  (find-file "~/.emacs.d/lisp/init-keybindings.el"))

(defun open-my-init-packages()
  (interactive)
  (find-file "~/.emacs.d/lisp/init-packages.el"))
(require 'init-packages)
(require 'init-ui) 
(require 'init-better-defaults.el)
(require 'init-org)
(require 'init-keybindings)


(setq custom-file (expand-file-name "lisp/custom.el" user-emacs-directory))


(load-file custom-file)
