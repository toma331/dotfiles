(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

(electric-indent-mode -1)

(setq ring-bell-function 'ignore)

(setq make-backup-files nil)   ; Stop creating ~ backup files
(setq auto-save-default nil)   ; Stop creating #autosave# files

(global-display-line-numbers-mode 1)

(setq inhibit-startup-screen t)   ; Disable startup screen
(setq initial-scratch-message "") ; Empty scratch buffer

;; Tabs
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)

(setq c-basic-offset 4)

(set-face-attribute 'default nil :font "IosevkaNerdFont-14.1")


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(gruber-darker))
 '(custom-safe-themes
   '("e13beeb34b932f309fb2c360a04a460821ca99fe58f69e65557d6c1b10ba18c7"
     "2ff9ac386eac4dffd77a33e93b0c8236bb376c5a5df62e36d4bfa821d56e4e20"
     "d80952c58cf1b06d936b1392c38230b74ae1a2a6729594770762dc0779ac66b7"
     "b1a691bb67bd8bd85b76998caf2386c9a7b2ac98a116534071364ed6489b695d"
     "3e374bb5eb46eb59dbd92578cae54b16de138bc2e8a31a2451bf6fdb0f3fd81b"
     "fa49766f2acb82e0097e7512ae4a1d6f4af4d6f4655a48170d0a00bcb7183970"
     default))
 '(package-selected-packages '(gruber-darker-theme)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Other

;; asm settings
(add-hook 'asm-mode-hook
          (lambda ()
            (setq-local electric-indent-mode nil)
            (setq-local indent-line-function #'ignore)
            (setq-local comment-start ";")
            (setq-local comment-end "")
            (setq-local comment-start-skip ";+\\s-*")
            
            (local-set-key (kbd ";") #'self-insert-command)
            
            (when (boundp 'comment-dwim) (fmakunbound 'comment-dwim))
            (when (boundp 'comment-indent) (fmakunbound 'comment-indent))
          
            (when (boundp 'electric-layout-mode) (electric-layout-mode -1))
            (when (boundp 'electric-pair-mode) (electric-pair-mode -1))
            (when (boundp 'electric-indent-local-mode) (electric-indent-local-mode -1))))

