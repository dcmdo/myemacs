;;org模式下语法el高亮
(require 'org)
(setq org-src-fontify-natively t)

;;未知
(setq org-agenda-files '("~/org"))
(global-set-key (kbd "C-c a") 'org-agenda)

(provide 'init-org)
