set nocompatible              " required
filetype off                  " required
set encoding=utf-8
set backspace=2 " make backspace work like most other programs
set clipboard=unnamed
set nu
set rnu


let python_highlight_all=1
syntax on


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-syntastic/syntastic'

Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'

Plugin 'tpope/vim-fireplace'

" latex plugins
"
Plugin 'LaTeX-Suite-aka-Vim-LaTeX'
Plugin 'lervag/vimtex'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" latex configurations
" Preview autoupdate
autocmd Filetype tex setl updatetime=1
" Autocomplete environment
autocmd FileType tex imap \\ <F5>


" window movement
nnoremap <S-Tab> <c-w>
tnoremap <S-Tab> <c-w>

" stopping capital W
"
command! W :w

" escape remap
"
imap jj <Esc>

" insert new lines
"
"
map <Enter> o<ESC>
map <S-Enter> O<ESC>


" Python indentation specifications



