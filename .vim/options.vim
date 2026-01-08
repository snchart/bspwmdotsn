syntax on
set number

filetype plugin indent on
set relativenumber
set hlsearch

set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set smartindent

set laststatus=1

set nofoldenable

augroup Mkdir
    autocmd!
    autocmd BufWritePre *
                \ if !isdirectory(expand("<afile>:p:h")) |
                \   call mkdir(expand("<afile>:p:h"), "p") |
                \ endif
augroup END
