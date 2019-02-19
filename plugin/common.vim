" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Code completion plugin
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set number
set complete-=t                                             " Do not search tag files when auto-completing
set complete-=i                                             " Do not search include files when auto-completing
set completeopt=menu,menuone                                " Complete options (disable preview scratch window, longest removed to aways show menu)
set pumheight=20                                            " Limit popup menu height
set concealcursor=inv                                       " Conceal in insert (i), normal (n) and visual (v) modes
set conceallevel=2                                          " Hide concealed text completely unless replacement character is defined
set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Nerd\ Font\ Complete\ 12
set encoding=utf-8
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
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set nocompatible
set showcmd		" display incomplete commands
set incsearch		" do incremental searching
set nocompatible
set backspace=indent,eol,start
set nobackup
set listchars=tab:>·,trail:~,space:·
set list
let g:mapleader= '\'
let g:ragtag_global_maps = 1
let g:airline_powerline_fonts=1
let g:libclang_location = "/usr/lib64/libclang.so"
let g:clang_use_library = 1                                 " Use libclang directly
let g:clang_library_path = g:libclang_location              " Path to the libclang on the system
let g:clang_complete_auto = 1                               " Run autocompletion immediatelly after ->, ., ::
let g:clang_complete_copen = 1                              " Open quickfix window on error
let g:clang_periodic_quickfix = 0                           " Turn-off periodic updating of quickfix window (g:ClangUpdateQuickFix() does the same)
let g:clang_snippets = 1                                    " Enable function args autocompletion, template parameters, ...
let g:clang_snippets_engine = 'ultisnips'                   " Use UltiSnips engine for function args autocompletion (provides mechanism to jump over to the next argument)
"let g:clang_snippets_engine = 'clang_complete'             " Use clang_complete engine for function args autocompletion
let g:clang_conceal_snippets = 1                            " clang_complete engine related setting
let g:editor_use_bkp_files= 0
let g:editor_use_swp_files= 0
let g:editor_use_undo_files= 0
let g:editor_auto_highlight_word_occurences = 1
let g:editor_auto_highlight_word_occurences_after_ms = 500
"let g:clang_trailing_placeholder = 1                       " clang_complete engine related setting
"let g:clang_hl_errors = 0                                  " Turn-off error highlighting
"let g:clang_complete_patterns = 1                          " (Does not work for me) Turn-on autocompletion for language constructs (i.e. loops)
"let g:clang_complete_macros = 1
"let g:clang_user_options='|| exit 0'                       " Avoid freezing on offending code

" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" UltiSnips plugin
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SuperTab plugin
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let loaded_supertab = 1                                    " Uncomment the this line to disable the plugin
let g:SuperTabDefaultCompletionType='<c-x><c-u>'            " 'user' defined default completion type
let g:SuperTabDefaultCompletionType = 'context'             " 'context' defined default completion type
let g:SuperTabCompletionContexts = ['s:ContextText', 's:ContextDiscover']
let g:SuperTabLongestHighlight=1
let g:SuperTabLongestEnhanced=1

" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Airline plugin
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set laststatus=2
let g:airline_powerline_fonts = 1                           " Use Powerline fonts to show beautiful symbols
let g:airline_theme = 'murmur'                              " Select 'murmur' theme as default one
let g:airline_inactive_collapse = 0                         " Do not collapse the status line while having multiple windows
let g:airline#extensions#whitespace#enabled = 1             " Do not check for whitespaces
let g:airline#extensions#tabline#enabled = 1                " Display tab bar with buffers
let g:airline#extensions#branch#enabled = 1                 " Enable Git client integration
let g:airline#extensions#tagbar#enabled = 1                 " Enable Tagbar integration
let g:airline#extensions#hunks#enabled = 1                  " Enable Git hunks integration

" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree plugin
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeMouseMode = 2                                 " Single-click to expand the directory, double-click to open the file
let g:NERDTreeShowHidden = 1                                " Show hidden files

