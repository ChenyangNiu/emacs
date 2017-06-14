;;; wu.el --- 
;; 
;; Description: 
;; Author: Hongyi Wu(吴鸿毅)
;; Email: wuhongyi@qq.com 
;; Created: 二 12月  9 13:37:24 2014 (+0800)
;; Last-Updated: Fri Apr 15 21:56:12 2016 (+0800)
;;           By: Niu
;;     Update #: 127
;; URL: http://wuhongyi.github.io 


;;显示/隐藏工具栏 方便调试
(global-set-key [f1] 'tool-bar-mode)
;;显示/隐藏菜单栏 ;; M-x menu-bar-open
(global-set-key [C-f1] 'menu-bar-mode)

;;设置编译命令;保存所有文件
(defun du-onekey-save ()
  "Save buffers"
  (interactive)
  (save-some-buffers t)
  );;(switch-to-buffer-other-window "*compilation*")
  ;;(compile compile-command)  
;; (setq-default compile-command "make")    
;; (global-set-key [C-f12] 'compile)
 (global-set-key [f12] 'du-onekey-save)

;;目的是开一个shell的小buffer，用于更方便地测试程序(也就是运行程序了)，我经常会用到。
;;f11就是另开一个buffer然后打开shell，C-f13则是在当前的buffer打开shell,shift+f13清空eshell
(defun open-shell-other-buffer ()
  "Open shell in other buffer"
  (interactive)
  (split-window-horizontally);;horizontally vertically
  (shell))

(global-set-key [(f11)] 'open-shell-other-buffer)
(global-set-key [C-f11] 'shell)


;;设置F9为撤销
(global-set-key [f9] 'undo)
;;设置F11快捷键指定Emacs 的日历系统
;;(global-set-key [C-f10] 'calendar) 
;;设置C-F12 快速察看日程安排
;;(global-set-key [f10] 'list-bookmarks)
;;关闭当前缓冲区
(global-set-key [C-f10] 'kill-this-buffer)
;;关闭当前窗口
(global-set-key [f10] 'delete-window)

;; ;##GDB;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(load-library "multi-gud.el")
(load-library "multi-gdb-ui.el")
(setq gdb-many-windows t)
(global-set-key [f2] 'gdb);gdb
;;(global-set-key [f4] 'gdb-many-windows);gdb-many-windows快捷键[F4]
;;(setq gdb-use-separate-io-buffer t) ; 不需要"IO buffer"时，则设为nil

;; (add-to-list 'load-path "~/.emacs.d/lammps")
;; (load-file "~/.emacs.d/lammps/lammps.el")


;; ;;git-emacs;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; (add-to-list 'load-path "~/.emacs.d/git-emacs")
;; (require 'git-emacs)
;; (global-set-key [f4] 'git-status);


;; (require 'window-numbering)
;; (window-numbering-mode 1)
;; (winner-mode 1)
;; (global-set-key (kbd "C-x 4 u") 'winner-undo)
;; (global-set-key (kbd "C-x 4 r") 'winner-redo)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; wu.el ends here
