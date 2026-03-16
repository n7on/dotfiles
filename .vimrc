set nocompatible
set relativenumber 
set number
set tabstop=4
set shiftwidth=4
set expandtab
set encoding=utf-8
set autoindent
set fileformat=unix
set splitright
set splitbelow
set nobackup
set noswapfile
set signcolumn=yes
" set termwinsize=10x0
set termguicolors
syntax enable
filetype plugin indent on

colorscheme ghdark
let g:mapleader=" "
" don't want c-p
let g:ctrlp_map = ''

" Netrw settings
let g:netrw_banner = 0        " Hide banner
let g:netrw_liststyle = 3     " Tree view

" Slime settings
let g:slime_target = "tmux"
let g:slime_default_config = {"socket_name": "default", "target_pane": "{last}"}
let g:slime_dont_ask_default = 1
let g:slime_no_mappings = 1

" lsp
nnoremap <silent><nowait> gd :LspGotoDefinition<CR>
nnoremap <silent><nowait> gi :LspGotoImpl<CR>
nnoremap <silent><nowait> gh :LspHover<CR>
nnoremap <silent><nowait> gh :LspDiag current<CR>
nnoremap <Leader>di :LspDiagCurrent <Cv>
" terminal
nnoremap <Leader>tv :vertical terminal ++cols=50<CR>
nnoremap <Leader>th :terminal ++rows=10<CR>
" vim config
nnoremap <Leader>sv :source $MYVIMRC <CR>
nnoremap <Leader>se :e $MYVIMRC <CR>
" slime
vmap <leader>xx <Plug>SlimeRegionSend
nmap <leader>xx <Plug>SlimeLineSend
nmap <leader>xc <Plug>SlimeConfig
" window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" ctrlp
nnoremap <leader>ff :CtrlP<CR>
nnoremap <leader>fb :CtrlPBuffer<CR>


" packages
packadd lsp
packadd vim-commentary
packadd vim-surround
packadd vim-fugitive
packadd vim-signify
packadd vim-slime
packadd ctrlp

" Swedish keyboard
augroup helpnav
    autocmd!
    autocmd FileType help nnoremap <buffer> <CR> <C-]>
    autocmd FileType help nnoremap <buffer> <BS> <C-o>
augroup END

augroup objc_ft
    autocmd!
    autocmd BufNewFile,BufRead *.m   setfiletype objc
    autocmd BufNewFile,BufRead *.mm  setfiletype objcpp
augroup END

" Clangd language server
call LspAddServer([#{
	\    name: 'clangd',
	\    filetype: ['c', 'cpp', 'objc', 'objcpp'],
	\    path: '/usr/bin/clangd',
	\    args: ['--background-index',
    \    '--clang-tidy',
    \    '--completion-style=detailed',
    \    '--query-driver=/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang*'
    \  ]
	\  }])
" Go
call LspAddServer([#{name: 'gopls',
     \   filetype: 'go',
     \   path: 'gopls',
     \   args: ['serve']
     \ }])
call LspAddServer([#{name: 'bashls',
	 \   filetype: ['sh', 'bash'],
	 \   path: '/opt/homebrew/bin/bash-language-server',
	 \   args: ['start']
	 \ }])
call LspOptionsSet(#{
     \   highlightDiagInline: v:false,
     \ })

command! -nargs=1 Vg noautocmd vimgrep! /\c<args>/ **/* | copen
