map Q gq
inoremap <C-U> <C-G>u<C-U>

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
call vundle#end()            " required
filetype plugin indent on    " required

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

function! SourceMyScripts()
  let file_list = split(globpath("~/.vim/plugin", "*.vim"), '\n')

  for file in file_list
    execute( 'source '.file )
  endfor
endfunction

Plugin 'L9'
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
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'xuyuanp/nerdtree-git-plugin'
Plugin 'jeffreyiacono/vim-colors-wombat'
Plugin 'morhetz/gruvbox'
Plugin 'Cppcheck-compiler'
Plugin 'powerline/powerline-fonts'
Plugin 'chiel92/vim-autoformat'
Plugin 'tpope/vim-ragtag'
Plugin 'TagHighlight'
Plugin 'gtags.vim'
Plugin 'hdima/python-syntax'

