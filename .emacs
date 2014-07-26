(display-battery-mode t)
(global-linum-mode t)
(prefer-coding-system 'utf-8)

;; Transparently open compressed files
(auto-compression-mode t)

;; Highlight matching parentheses when the point is on them.
(show-paren-mode 1)


;; trying something old
;(cua-mode t)

(global-set-key "\C-i" 'self-insert-command)
(setq c-default-style "bsd"
	c-basic-offset 4
	tab-width 4
	indent-tabs-mode t)

;; Set visual line mode for textfiles but not code 
(add-hook 'text-mode-hook 'turn-on-visual-line-mode)

;; Function for altering textfiles to utf-8-dos until I find a better replacement
(defun dos-file ()
      "Change the current buffer to UTF-8 with DOS line-ends."
      (interactive)
      (set-buffer-file-coding-system 'utf-8-dos t))

;; Setting the above function to act on textfiles
(add-hook 'text-mode-hook 'dos-file)


;; put backups in .saves
(setq backup-directory-alist `(("." . "~/.saves")))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
 
