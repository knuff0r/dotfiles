set nocompatible
filetype off

"set rtp+=~/.vim/bundle/vundle/
"call vundle#rc()

"Bundle 'gmarik/vundle'

"Bundle 'tpope/vim-fugitive'
"Bundle 'fholgado/minibufexpl.vim'
"Bundle 'scrooloose/nerdtree'
"Bundle 'vim-scripts/javacomplete'

" allow backspacing over everything in insert mode
set backspace=indent,eol,start
set smartindent
set filetype=on
set tabstop=4
set shiftwidth=4
set expandtab
set nobackup
set history=50		" keep 50 lines of command line history
set showcmd		" display incomplete commands
set incsearch		" do incremental searching
colo anotherdark
set hidden
set noswapfile
set showmatch
" set foldmethod=syntax
set pastetoggle=<F3>
if has('mouse')
  set mouse=a
endif
"----------NERDTree------------
"map <F2> :NERDTreeToggle<CR>
"let NERDTreeMapOpenInTab='<ENTER>'
"autocmd BufWinEnter * NERDTreeMirror

filetype plugin indent on
syntax on
set omnifunc=syntaxcomplete#Complete
set number

au BufNewFile,BufRead * if &syntax == '' | setf dosini | endif
