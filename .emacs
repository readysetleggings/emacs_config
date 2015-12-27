(put 'upcase-region 'disabled nil)

					;startup hook starts here ----

(add-hook 'emacs-startup-hook
	  (lambda ()  


	    
	    (require 'gruvbox-theme)
	    (set-face-attribute 'default nil :font "Consolas 12")
	    (require 'powerline)
	    (powerline-default-theme)

	    
	    (when (>= emacs-major-version 24)
	      (require 'package)
	      (package-initialize)
	      (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
	      )


	    (require 'autopair) 
	    (autopair-global-mode)



	    (require 'auto-complete)
	    (ac-config-default)  
	    (require 'auto-complete-config)
	    (auto-complete-mode)
	    (require 'auto-complete-c-headers)
	    (add-to-list 'ac-sources 'ac-source-c-headers)


	    
	    (require 'yasnippet)
	    (yas-global-mode 1)
	    

	    
	    (scroll-bar-mode -1)
	    (add-hook 'after-make-frame-functions
		      '(lambda (frame)
			 (modify-frame-parameters frame
						  '((vertical-scroll-bars . nil)
						    (horizontal-scroll-bars . nil)))))
	    (defun kcb()
	      (interactive)
	      (kill-buffer))

	    (defun lsp()
	      (interactive)
	      (list-packages))


	    (setq backup-directory-alist `(("." . "~/.saves")));should put backups into a directory called 'saves'

	    (global-aggressive-indent-mode 1)
					; shows the parne mode, highlighting the parens of a pair. 
	    (show-paren-mode 1)
					; turns off system sound
	    (setq visible-bell t)
					; sets highlight linemode on
	    (global-hl-line-mode)


	    (defun my-previous-window()
	      "Previous window"
	      (interactive)
	      (other-window -1))           
	    (global-set-key  (kbd "C-x C-,") 'my-previous-window) 
	    (global-set-key (kbd  "C-x C-.") 'other-window)

					; switches between previous and next buffer
	    (global-set-key (kbd "C-x C-l") 'next-buffer)
	    (global-set-key (kbd "C-x C-j") 'previous-buffer)

					; this makes it so that ctrl + arrows resize the current buffer window
	    (global-set-key (kbd "<C-up>") 'shrink-window)
	    (global-set-key (kbd "<C-down>") 'enlarge-window)
	    (global-set-key (kbd "<C-left>") 'shrink-window-horizontally)
	    (global-set-key (kbd "<C-right>") 'enlarge-window-horizontally)


	    (defun my-previous-window()
	      "Previous window"
	      (interactive)
	      (other-window -1))           
	    (global-set-key  (kbd "C-x C-,") 'my-previous-window) 
	    (global-set-key (kbd  "C-x C-.") 'other-window)

					; switches between previous and next buffer
	    (global-set-key (kbd "C-x C-l") 'next-buffer)
	    (global-set-key (kbd "C-x C-j") 'previous-buffer)


					; disables linum-mode in specific buffers
	    (setq linum-mode-inhibit-modes-list '(eshell-mode
						  shell-mode
						  erc-mode
						  jabber-roster-mode
						  jabber-chat-mode
						  gnus-group-mode
						  gnus-summary-mode
						  gnus-article-mode
						  speedbar-mode))
	    
	    (defadvice linum-on (around linum-on-inhibit-for-modes)
	      "Stop the load of linum-mode for some major modes."
	      (unless (member major-mode linum-mode-inhibit-modes-list)
		ad-do-it))

	    (ad-activate 'linum-on)
	    (global-linum-mode)



	    
	    (require 'sr-speedbar)
	    (sr-speedbar-open)
	    (sr-speedbar-refresh-turn-on)
	    
	    
	    ;; Removes *messages* from the buffer.
	    (setq-default message-log-max nil)
	    (kill-buffer "*Messages*")

	    ;; Removes *Completions* from buffer after you've opened a file.
	    (add-hook 'minibuffer-exit-hook
		      '(lambda ()
			 (let ((buffer "*Completions*"))
			   (and (get-buffer buffer)
				(kill-buffer buffer)))))



	    ;; No more typing the whole yes or no. Just y or n will do.
	    (fset 'yes-or-no-p 'y-or-n-p)

	    (cd "C:/users/null/workspace/")


	    (kill-buffer "*scratch*")
	    (kill-buffer "*GNU Emacs*");If you don't see "No buffer named GNU emacs in the minibuffer the entire init file did not load"

	    
	    )); end of startup hook


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(custom-enabled-themes (quote (gruvbox)))
 '(custom-safe-themes
   (quote
    ("9e720b0c4ed90ce3735c94705f93b519191f5220e73dbacf6a4d71b89a0a6b0e" default)))
 '(desktop-restore-frames t)
 '(desktop-restore-reuses-frames t)
 '(desktop-save t)
 '(desktop-save-mode t)
 '(menu-bar-mode nil)
 '(package-archives (quote (("gnu" . "http://elpa.gnu.org/packages/"))))
 '(sr-speedbar-default-width 40)
 '(sr-speedbar-right-side nil)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )