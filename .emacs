(put 'upcase-region 'disabled nil)


					;###################################; 
					;########### startup hook ##########;
					;###################################;
(add-hook 'emacs-startup-hook
	  (lambda ()  

	    ;;90% of my config are in these files
	    (load "~/.emacs.d/user-init/user-functions-init")
	    (load "~/.emacs.d/user-init/user-init")
	    (load "~/.emacs.d/user-init/ido-init")
	    (load "~/.emacs.d/user-init/package-init")

	    )); end of startup hook 



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(desktop-restore-frames t)
 '(desktop-restore-reuses-frames t)
 '(desktop-save t)
 '(desktop-save-mode t)
 '(initial-scratch-message ";;")
 '(menu-bar-mode nil)
 '(org-agenda-files nil)
 '(package-archives (quote (("gnu" . "http://elpa.gnu.org/packages/"))))
 '(pop-up-windows nil)
 '(rainbow-identifiers-face-count 6)
 '(speedbar-show-unknown-files 1)
 '(speedbar-update-flag t)
 '(speedbar-verbosity-level 0)
 '(sr-speedbar-default-width 40)
 '(sr-speedbar-right-side nil)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
