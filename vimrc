
set nocompatible
set backspace=indent,eol,start
set nobackup
"

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
" else
  " set backup		" keep a backup file
" endif
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching

" For Win32 GUI: remove 't' flag from 'guioptions': no tearoff menu entries
" let &guioptions = substitute(&guioptions, "t", "", "g")

" Don't use Ex mode, use Q for formatting
map Q gq

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

" In many terminal emulators the mouse works just fine, thus enable it.

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

  augroup END

endif " has("autocmd")

" set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
		  \ | wincmd p | diffthis
endif

set number
set complete+=.
set complete+=k
set complete+=b
set complete+=t

set laststatus=2

set showcmd

set statusline=%f%h%m%r
set statusline+=%=
set statusline+=%<format=%{&fileformat}\ file=%{&fileencoding}\ enc=%{&encoding}\ %b(0x%B)\ %l,%c%V\ %P
set hlsearch
set incsearch
set nowrapscan
set ignorecase

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
call vundle#end()            " required
filetype plugin indent on    " required

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" or path directly to the library file
"
"

let g:editor_use_bkp_files= 0
let g:editor_use_swp_files= 0
let g:editor_use_undo_files= 0
let g:editor_auto_highlight_word_occurences = 1
let g:editor_auto_highlight_word_occurences_after_ms = 500

function! SourceMyScripts()
  let file_list = split(globpath("~/.vim/plugin", "*.vim"), '\n')

  for file in file_list
    execute( 'source '.file )
  endfor
endfunction

Plugin 'scrooloose/nerdcommenter'
Plugin 'ervandew/supertab'
Plugin 'majutsushi/tagbar'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'sirver/ultisnips'
Plugin 'spf13/vim-autoclose'
Plugin 'tommcdo/vim-fugitive-blame-ext'
Plugin 'airblade/vim-gitgutter'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'kris2k/vim-pathogen'
Plugin 'a.vim'
Plugin 'c.vim'
" Plugin 'valloric/youcompleteme'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'xuyuanp/nerdtree-git-plugin'
Plugin 'jeffreyiacono/vim-colors-wombat'
Plugin 'morhetz/gruvbox'
Plugin 'Cppcheck-compiler'
Plugin 'powerline/powerline-fonts'
Plugin 'chiel92/vim-autoformat'
Plugin 'TagHighlight'
