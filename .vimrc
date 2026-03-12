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

" Netrw settings
let g:netrw_banner = 0        " Hide banner
let g:netrw_liststyle = 3     " Tree view

nnoremap <silent><nowait> gd :LspGotoDefinition<CR>
nnoremap <silent><nowait> gi :LspGotoImpl<CR>
nnoremap <silent><nowait> gh :LspHover<CR>
nnoremap <silent><nowait> gh :LspDiag current<CR>
nnoremap <Leader>vt :vertical terminal ++cols=50<CR>
nnoremap <Leader>t :terminal ++rows=10<CR>
nnoremap <Leader>rg :!go run .<CR>
nnoremap <Leader>rpl :w !perl <CR>
nnoremap <Leader>rp :w !python <CR>
nnoremap <Leader>sv :source $MYVIMRC <CR>
nnoremap <Leader>di :LspDiagCurrent <Cv>

" Window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

augroup objc_ft
  autocmd!
  autocmd BufNewFile,BufRead *.m   setfiletype objc
  autocmd BufNewFile,BufRead *.mm  setfiletype objcpp
augroup END

packadd lsp
packadd vim-commentary
packadd vim-surround

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
