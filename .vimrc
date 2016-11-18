set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
"
set splitbelow
set splitright

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" Enable folding
set foldmethod=indent
set foldlevel=99
set laststatus=2
set statusline+=%f
set ts=4
set ts=4
" Enable folding with the spacebar
nnoremap <space> za
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
"Folder
Plugin 'tmhedberg/SimpylFold'
let g:SimpylFold_docstring_preview=1

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
"Python identation
Plugin 'vim-scripts/indentpython.vim'
"Autocomplete
Bundle 'Valloric/YouCompleteMe'
"Sintastic
Plugin 'scrooloose/syntastic'
"flake8
Plugin 'nvie/vim-flake8'
let python_highlight_all=1
syntax on
"File Browsing
Plugin 'scrooloose/nerdtree'
map <C-t> :NERDTreeToggle<CR>
"Git
Plugin 'tpope/vim-fugitive'
"PowerLine
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
"Python Mode
Plugin 'klen/python-mode'
" Python-mode
" " Activate rope
" " Keys:
" " K             Show python docs
 " <Ctrl-Space>  Rope autocomplete
" " <Ctrl-c>g     Rope goto definition
" " <Ctrl-c>d     Rope show documentation
" " <Ctrl-c>f     Rope find occurrences
" " <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" " [[            Jump on previous class or function (normal, visual, operator
" modes)
" " ]]            Jump on next class or function (normal, visual, operator
" modes)
" " [M            Jump on previous class or method (normal, visual, operator
" modes)
" " ]M            Jump on next class or method (normal, visual, operator
" modes)
 let g:pymode_rope = 1
"
" " Documentation
 let g:pymode_doc = 1
 let g:pymode_doc_key = 'K'
"
" "Linting
 let g:pymode_lint = 1
 let g:pymode_lint_checker = "pyflakes,pep8"
" " Auto check on save
 let g:pymode_lint_write = 1
"
" " Support virtualenv
 let g:pymode_virtualenv = 1
"
" " Enable breakpoints plugin
 let g:pymode_breakpoint = 1
 let g:pymode_breakpoint_bind = '<leader>b'
"
" " syntax highlighting
 let g:pymode_syntax = 1
 let g:pymode_syntax_all = 1
 let g:pymode_syntax_indent_errors = g:pymode_syntax_all
 let g:pymode_syntax_space_errors = g:pymode_syntax_all
 let g:pymode_options_max_line_length=120
"
" " Don't autofold code
 let g:pymode_folding = 0




" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
