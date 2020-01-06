set nocompatible              " Removes some bugs
filetype off                  " required
set encoding=utf-8
set backspace=2 " make backspace work like most other programs

" Allows copy and pasting out
set clipboard=unnamed

" Setting relative numbering
set nu
set rnu

let python_highlight_all=1
syntax on


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugins for file directories
Plugin 'scrooloose/nerdtree'

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Python Plugins
Plugin 'vim-scripts/indentpython.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-syntastic/syntastic'
Plugin 'tell-k/vim-autopep8'


Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'

" General Vim Plugins
Plugin 'tpope/vim-fireplace'
Plugin 'wincent/command-t'

" Elixir Plugins
"

Plugin 'slashmili/alchemist.vim'
Plugin 'elixir-editors/vim-elixir'

" latex plugins
"
Plugin 'LaTeX-Suite-aka-Vim-LaTeX'
Plugin 'lervag/vimtex'


" Dart syntax plugins
" for syntax highlighting see the following https://www.code-maven.com/slides/dart-programming/dart-in-vim
Plugin 'dart-lang/dart-vim-plugin'
Plugin 'thosakwe/vim-flutter'

call vundle#end()            " required

let dart_html_in_string=v:true

filetype plugin indent on    " required

" latex configurations
" Preview autoupdate
autocmd Filetype tex setl updatetime=1
" Autocomplete environment
autocmd FileType tex imap \\ <F5>
let g:Tex_MultipleCompileFormats='pdf,bib,pdf'

" python autopep8
"let g:autopep8_on_save = 1

" window movement
nnoremap <S-Tab> <c-w>
tnoremap <S-Tab> <c-w>

" stopping capital W
"
command! W :w
command! Q :q

" escape remap
"
imap jj <Esc>

" insert new lines
"
"
map <Enter> o<ESC>
map <S-Enter> O<ESC>

" automatic Dart file type detection
au BufRead,BufNewFile *.dart set filetype=dart

" NERDTree Configuration

autocmd vimenter * NERDTree
let NERDTreeShowHidden=1
" Makes sure that if the main window is closed that the NERDTREE windows is
" closed as well
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Makes sure NERDTREE isnt the main focus on launch
augroup NERD
    au!
    autocmd VimEnter * NERDTree
    autocmd VimEnter * wincmd p
augroup END

