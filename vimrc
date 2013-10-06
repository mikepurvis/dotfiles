" A minimal vimrc
"
" Referenced here: http://vimuniversity.com/samples/your-first-vimrc-should-be-nearly-empty
"
" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" Make backspace behave in a sane manner.
set backspace=indent,eol,start

" Syntax highlighting on
syntax on

" Enable file type detection and do language-dependent indenting.
filetype plugin indent on

" Default tabbing.
set expandtab
set ts=2
set sw=2
set cindent

" Glob all the plugins in the bundle directory.
call pathogen#infect()

" Open all code folds on startup
set foldmethod=syntax
au BufRead * normal zR

" Shortcuts for the ros plugin functions
noremap <Leader>rc :<C-u>Roscd<space>
noremap <Leader>re :<C-u>Rosed<space>

" Better tab completion
set wildmode=longest,list,full
set wildmenu

colorscheme black_angus
