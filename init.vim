" ==== Quoted from an example for a vimrc file ====

" allow backspacing over everything in insert mode
set backspace=indent,eol,start



" ==== My config ====

" --- Basic config ---
set number " Indicate number of lines
set clipboard+=unnamedplus " Set clipboard


" --- Search setting ---
set hlsearch " highlight search phrase
set incsearch


" --- Make invisible character visible ---
set list
set listchars=tab:>-


" --- Expand tab as 4 space ---
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4


" --- Set statusline ---
set laststatus=2


" --- Binary edit mode ---
augroup BinaryXXD
    autocmd!
    autocmd BufReadPre *.bin let &bin=1
    autocmd BufReadPost * if &bin | silent %!xxd -g 1
    autocmd BufReadPost * set ft=xxd | endif
    autocmd BufWritePre * if &bin | %!xxd -r
    autocmd BufWritePre * endif
    autocmd BufWritePost * if &bin | silent %!xxd -g 1
    autocmd BufWritePost * set nomod | endif
augroup END


" --- Read *.md as markdown ---
au BufRead,BufNewFile *.md set filetype=markdown


" --- Set colorscheme ---
colorscheme jellybeans
syntax on  " Set syntax highlight
