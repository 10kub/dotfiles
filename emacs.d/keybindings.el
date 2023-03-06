(global-unset-key (kbd "M-c"))
(global-unset-key (kbd "C-."))

(global-set-key (kbd "M-s") 'save-buffer)
;; (global-set-key (kbd "C-x f") 'find-file)
(global-set-key (kbd "M-o") 'find-file)

(global-set-key (kbd "M-q") 'kill-buffer)
(global-set-key (kbd "C-q") 'kill-buffer)
(global-set-key (kbd "C-M-q") 'save-buffers-kill-emacs)

(global-set-key (kbd "M-[") 'previous-buffer)
(global-set-key (kbd "M-]") 'next-buffer)

;; (global-set-key (kbd "M-g") 'goto-line)
(global-unset-key (kbd "M-g"))
(global-set-key (kbd "M-;") 'yr:consult-line-improve)
(global-set-key (kbd "C-;") 'yr:consult-line-improve)
(global-set-key (kbd "M-g") 'consult-goto-line)
(global-set-key (kbd "M-y") 'consult-yank-pop)

;; comment toggle
(global-unset-key (kbd "M-/"))
(global-set-key (kbd "M-/") 'comment-line)
(global-unset-key (kbd "C-/"))
(global-set-key (kbd "C-/") 'comment-line)


;; (global-set-key (kbd "<f6>") 'flyspell-buffer)
(global-set-key (kbd "<f6>") 'yr:toggle-flyspell)
;; (global-set-key (kbd "<f7>") 'switch-to-buffer-other-tab)
(global-set-key (kbd "<f7>") 'tab-new)
(global-set-key (kbd "<f8>") 'toggle-truncate-lines)
(global-set-key (kbd "<f9>") 'whitespace-mode)
(global-set-key (kbd "<f10>") 'dired-sidebar-toggle-sidebar)
;; (global-set-key (kbd "<f8>") 'tab-new)
;; (global-set-key (kbd "<f9>") 'bookmark-set)
;; (global-set-key (kbd "<f10>") 'bookmark-jump)
;; (global-set-key (kbd "<f12>") 'bookmark-bmenu-list)
(global-set-key (kbd "<f12>") 'save-buffers-kill-emacs)

(global-set-key (kbd "M-l") #'rg-literal)
(global-set-key (kbd "M-c g") #'rg-menu)
(global-set-key (kbd "M-c p") 'projectile-command-map)
(global-set-key (kbd "C-M-p") 'projectile-switch-project)
(global-set-key (kbd "M-p") 'yr:fzf-directory-improve)
(global-set-key (kbd "M-h") 'lazy-highlight-cleanup)


(global-set-key [(control shift up)]  'yr:move-text-up)
(global-set-key [(control shift down)]	'yr:move-text-down)

(global-set-key (kbd "C-S-d") 'yr:duplicate-line)
(eval-after-load "php-mode"
  '(define-key php-mode-map (kbd "C-S-d") 'yr:duplicate-line))

;; (global-set-key (kbd "C-\\") 'yr:set-input-method-ukraine)
;; (global-set-key (kbd "M-\\") 'yr:set-input-method-english)
(global-set-key (kbd "M-\\") 'yr:toggle-input-method)
(global-set-key (kbd "C-\\") 'yr:toggle-input-method)

(global-set-key (kbd "<C-S-return>") 'yr:new-line-above)
(global-set-key (kbd "<C-return>") 'yr:new-line-below)

(global-unset-key (kbd "M-m"))
(global-set-key (kbd "M-m") 'yr:toggle-mark-word-at-point)
;; (global-set-key (kbd "C-M-SPC") 'er/mark-word)
;; (global-set-key (kbd "C-=") 'er/expand-region)
(global-set-key (kbd "C-M-SPC") 'er/expand-region)
(global-set-key (kbd "C-M-l") 'yr:copy-line)

(global-set-key (kbd "M-5") (lambda ()
                                (interactive)
                                (other-window -1))) ;; back one
(define-key winum-keymap (kbd "M-1") 'winum-select-window-1)
(define-key winum-keymap (kbd "M-2") 'winum-select-window-2)
(define-key winum-keymap (kbd "M-3") 'winum-select-window-3)
(define-key winum-keymap (kbd "M-4") 'winum-select-window-4)

;; go to last mark
(global-set-key (kbd "M--") 'consult-mark)
(global-set-key (kbd "M-+") 'consult-global-mark)

(global-unset-key (kbd "C-z"))
(global-set-key (kbd "C-z")   'undo-fu-only-undo)
(global-set-key (kbd "C-S-z") 'undo-fu-only-redo)
(global-set-key (kbd "M-z")   'undo-fu-only-undo)
(global-set-key (kbd "C-M-z") 'undo-fu-only-redo)


;; Font size
(global-set-key (kbd "C-+") 'text-scale-increase)
(global-set-key (kbd "C--") 'text-scale-decrease)

;; autocomplete
(global-set-key (kbd "M-SPC") 'company-complete)
(with-eval-after-load 'company
  (define-key company-active-map (kbd "M-SPC") #'company-complete)
  (define-key company-active-map (kbd "M-n") #'company-select-next)
  (define-key company-active-map (kbd "M-p") #'company-select-previous)
  (define-key company-active-map (kbd "M-y") #'company-complete-selection)
  (define-key company-active-map (kbd "<return>") nil)
  (define-key company-active-map (kbd "RET") nil)
  (define-key company-active-map (kbd "TAB") nil))


(global-unset-key (kbd "M-r"))
(global-set-key (kbd "M-r") 'yr:query-replace-improve)
;; (global-set-key (kbd "C-s") 'isearch-forward)
(global-set-key (kbd "C-s") 'yr:isearch-forward-improve)
(global-set-key (kbd "C-r") 'yr:isearch-backward-improve)
(global-set-key (kbd "M-c b") 'yr:occur-improve)


;; (global-set-key (kbd "s-<tab>") 'switch-to-buffer)
(global-set-key (kbd "s-<tab>") 'consult-buffer)
(global-set-key (kbd "C-<tab>") #'ibuffer)
;; (global-set-key (kbd "M-c b") 'ibuffer-other-window)


;; multiple-cursors
(global-unset-key (kbd "M-<down-mouse-1>"))
(global-set-key (kbd "M-<mouse-1>") 'mc/add-cursor-on-click)
(global-set-key [(meta down)] 'mc/mark-next-like-this)
(global-unset-key (kbd "C-d"))
(global-set-key (kbd "C-d") 'mc/mark-next-like-this-word)
(global-set-key (kbd "M-c C-d") 'mc/skip-to-next-like-this)


(global-set-key (kbd "M-c 1") 'google-translate-at-point)
(global-set-key (kbd "M-c 2") 'google-translate-at-point-reverse)
(global-set-key (kbd "M-c t") 'yr:open-gnome-terminal)


;; alias  -------------------------------------------------------------
(defalias 'noh 'lazy-highlight-cleanup)
(defalias 'rep 'query-replace)
(defalias 'wrap-toggle 'toggle-truncate-lines)

(defalias 'gst 'magit-status)
(defalias 'gblame 'magit-blame)
(defalias 'glog 'magit-log-current)
(defalias 'gdiff-range 'magit-diff-range)
(defalias 'gdiff-file 'magit-diff-buffer-file)
(defalias 'gsub 'magit-submodule-update-all)
(defalias 'gblameshow 'magit-show-commit)
(defalias 'gbranches 'magit-show-refs-popup)

(defalias 'modeshow 'describe-mode)
(defalias 'rev 'revert-buffer-quick)
(defalias 'rename-file-buffer 'yr:rename-file-and-buffer)
(defalias 'name-copy 'yr:file-name-to-clipboard)
(defalias 'absolute-copy 'yr:path-file-absolute-to-clipboard)
(defalias 'new-buffer 'yr:new-empty-buffer)
(defalias 'gnome-terminal 'yr:open-gnome-terminal)
(defalias 'close-other-buffers 'yr:kill-other-buffers)
(defalias 'zen-mode 'olivetti-mode)
