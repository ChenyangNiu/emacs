;; .emacs

;;(set-default-font "-unknown-DejaVu Sans Mono-normal-normal-normal-*-19-*-*-*-m-0-iso10646-1")

;;F1 显示/隐藏工具栏 C-F1 显示/隐藏菜单栏
;;F2 gdb
;;F3 代码转跳  C-F3 不提示跳回
;;F4 git-status
;;F5 代码折叠 C-F5 代码全部折叠
;;F6 代码展开 C-F6代码全部展开
;;F7 speedbar
;;F8 激活ecb C-F8 停止ecb
;;F9 undo
;;F10 delete-window   C-F10 kill-this-buffer
;;F11 open-shell-other-buffer  C-F11 当前窗口打开shell
;;F12 onekey-save




;; default to better frame titles
;; (setq frame-title-format
;;       (concat  "%b - Hongyi Wu @ Peking University"))
;; (setq frame-title-format "%b - Hongyi Wu @ Peking University")

;; For my language code setting (UTF-8)
(setq current-language-environment "UTF-8")
(setq default-input-method "chinese-py")
(setq locale-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

;; 实现全屏效果
;; (defun my-fullscreen ()
;; (interactive)
;; (x-send-client-message
;; nil 0 nil "_NET_WM_STATE" 32
;; '(2 "_NET_WM_STATE_FULLSCREEN" 0))
;; )
;; (my-fullscreen)


;;显示匹配的括号
(show-paren-mode t) 
;;光标显示为一竖线
;;(setq-default cursor-type 'bar)
;;鼠标指针避光标
;(mouse-avoidance-mode 'animate)
;(mouse-avoidance-mode 'cat-and-mouse)
;;开启语法高亮。
(global-font-lock-mode 1)
;;高亮显示区域选择
(transient-mark-mode t)
;;不生成临时文件
(setq-default make-backup-files nil)
;;显示行列号
(setq column-number-mode t) 
(setq line-number-mode t)
;;允许emacs和外部其他程序的粘贴
(setq x-select-enable-clipboard t)
;;使用鼠标中键可以粘贴
(setq mouse-yank-at-point t)
;; 自动的在文件末增加一新行
(setq require-final-newline t)
;; 当光标在行尾上下移动的时候，始终保持在行尾。
;(setq track-eol t);这个会导致tab失效
(auto-image-file-mode t) ;让Emacs可以直接打开、显示图片
(tool-bar-mode 0);默认隐藏工具栏
;; 去掉滚动条
(set-scroll-bar-mode nil)
;;设置home键指向buffer开头，end键指向buffer结尾  
(global-set-key [home] 'beginning-of-buffer)  
(global-set-key [end] 'end-of-buffer)

;; move window (Shift + cursor)
(windmove-default-keybindings)
(setq windmove-wrap-around t)

;;设置个人信息
;; (setq user-full-name "Niu")
;; (setq user-mail-address "niu@oku.edu.cn")


;;代码折叠
(load-library "hideshow")
;; (add-hook 'java-mode-hook 'hs-minor-mode)
;; (add-hook 'perl-mode-hook 'hs-minor-mode)
;; (add-hook 'php-mode-hook 'hs-minor-mode)
(add-hook 'emacs-lisp-mode-hook 'hs-minor-mode)
(add-hook 'c++-mode-hook 'hs-minor-mode)
(add-hook 'c-mode-hook 'hs-minor-mode)
;; (add-hook 'matlab-mode-hook 'hs-minor-mode)
(add-hook 'fortran-mode-hook 'hs-minor-mode)
(add-hook 'f90-mode-hook 'hs-minor-mode)
;; (add-hook 'markdown-mode-hook 'hs-minor-mode)


;;color
;;(set-background-color "black")

(add-to-list 'load-path "~/.emacs.d/plugins")
(require 'color-theme)
;;(color-theme-initialize)
;;(color-theme-subtle-hacker)
;;(color-theme-xemacs)
;;(color-theme-wheat)
;;(color-theme-calm-forest)
;;(color-theme-matrix)
;;(color-theme-robin-hood)
(color-theme-euphoria);;颜色很好
;;(color-theme-arjen)
;;(color-theme-jsc-dark);;
;;(color-theme-gnome)
;;(color-theme-vim-colors)
;;(color-theme-classic)
;;(color-theme-emacs-nw)
;;(color-theme-standard)
;;(color-theme-xemacs)
;;(color-theme-word-perfect)
;;(color-theme-xp)

;;(display time)======
(setq display-time-24hr-format t);;24 hour time format
(display-time-mode 1);;Display current time on minibuffer
(setq display-time-day-and-data t);;Display data and day

;;; uncomment this line to disable loading of "default.el" at startup
;; (setq inhibit-default-init t)

;; enable visual feedback on selections
;(setq transient-mark-mode t)


;; default to unified diffs
(setq diff-switches "-u")

;; always end a file with a newline
;(setq require-final-newline 'query)

;;; uncomment for CJK utf-8 support for non-Asian users
;; (require 'un-define)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(display-time-mode t)
 '(inhibit-startup-screen t)
 '(show-paren-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "DejaVu Sans Mono" :foundry "unknown" :slant normal :weight bold :height 120 :width normal)))))


;;自动补全
(add-to-list 'load-path "~/.emacs.d/plugins")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/plugins/ac-dict")
(ac-config-default)
;; ac-clang-flags是头文件的目录，根据系统的不同可能你的头文件目录也会不同，列出系统中所有的头文件目录方法是：
;; $ echo "" | g++ -v -x c++ -E -  
(add-to-list 'load-path "~/.emacs.d/plugins")
(require 'auto-complete-clang) 
;; (setq ac-clang-auto-save t) 
(setq ac-auto-start t);;nil  t
(setq ac-quick-help-delay 0.5);;默认0.5
(ac-set-trigger-key "TAB")
;; (define-key ac-mode-map  [(control tab)] 'auto-complete)
(define-key ac-mode-map  [(control tab)] 'auto-complete)
(defun my-ac-config ()
  (setq ac-clang-flags  
	(mapcar(lambda (item)(concat "-I" item))  
	       (split-string  
		"  
 /usr/lib/gcc/x86_64-redhat-linux/4.8.5/../../../../include/c++/4.8.5
 /usr/lib/gcc/x86_64-redhat-linux/4.8.5/../../../../include/c++/4.8.5/x86_64-redhat-linux
 /usr/lib/gcc/x86_64-redhat-linux/4.8.5/../../../../include/c++/4.8.5/backward
 /usr/lib/gcc/x86_64-redhat-linux/4.8.5/include
 /usr/local/include
 /usr/include
 /opt/root606/include
    "))) 
  (setq-default ac-sources '(ac-source-abbrev ac-source-dictionary ac-source-words-in-same-mode-buffers))
  (add-hook 'emacs-lisp-mode-hook 'ac-emacs-lisp-mode-setup)
  ;;(add-hook 'c-mode-common-hook 'ac-cc-mode-setup)
  (add-hook 'ruby-mode-hook 'ac-ruby-mode-setup)
  (add-hook 'css-mode-hook 'ac-css-mode-setup)
  (add-hook 'auto-complete-mode-hook 'ac-common-setup)
  (global-auto-complete-mode t))
(defun my-ac-cc-mode-setup ()
  (setq ac-sources (append '(ac-source-clang ac-source-yasnippet) ac-sources)))
(add-hook 'c-mode-common-hook 'my-ac-cc-mode-setup)
;; ac-source-gtags
(my-ac-config)


;;显示行数
(add-to-list 'load-path "~/.emacs.d/plugins")
(require 'linum)    
;;; show line numbers in buffer  
;;; run M-x linum-mode    
;;; show line numbers in all buffers  
;;; run M-x global-linum-mode    
(global-linum-mode t)  

;;模板调用
(add-to-list 'load-path "~/.emacs.d/plugins") 
(require 'yasnippet-bundle) 
(setq yas/root-directory "~/.emacs.d/snippets")
(yas/load-directory yas/root-directory)

 
(add-to-list 'load-path "~/.emacs.d/plugins")
;; ;;加载header2.el文件,自动添加文件头
;; (require 'header2)
;; (autoload 'auto-update-file-header "header2")
;; (add-hook 'write-file-hooks 'auto-update-file-header)
;; (autoload 'auto-make-header "header2")
;; (add-hook 'emacs-lisp-mode-hook 'auto-make-header)
;; (add-hook 'c-mode-common-hook   'auto-make-header) 
;; (add-hook 'c++-mode-common-hook   'auto-make-header)
;; (add-hook 'text-mode-hook   'auto-make-header)
;; ;; (add-hook 'matlab-mode-hook 'auto-make-header)
;; ;; (add-hook 'latex-mode-hook 'auto-make-header)
;; (add-hook 'fortran-mode-hook 'auto-make-header)
;; (add-hook 'f90-mode-hook 'auto-make-header)
;; (add-hook 'python-mode-hook 'auto-make-header)
;; ;; (add-hook 'Markdown-mode-hook 'auto-make-header)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ;;markdown-mode
;; (add-to-list 'load-path "~/.emacs.d/plugins")
;; (autoload 'markdown-mode "markdown-mode.el"
;; "Major mode for editing Markdown files" t)
;; (setq auto-mode-alist
;; (cons '(".markdown" . markdown-mode) auto-mode-alist))
;; (setq auto-mode-alist
;; (cons '(".md" . markdown-mode) auto-mode-alist))
;; (setq auto-mode-alist
;; (cons '(".ejs" . markdown-mode) auto-mode-alist))


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
