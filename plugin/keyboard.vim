nmap <F4> :TagbarToggle<CR>
nmap <F3> :NERDTreeFocus<CR>
set switchbuf=usetab,newtab
nnoremap <F8> :sbnext<CR>
nnoremap <S-F8> :sbprevious<CR>


" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Buffer editing
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap    <C-a>               ggVG|"                                                          Select all
vnoremap    <C-x>               "+x|"                                                           Cut
vnoremap    <C-c>               "+y|"                                                           Copy
map         <C-v>               "+gP|"                                                          Paste (with some black magic from https://github.com/vim/vim/blob/master/runtime/mswin.vim)
cmap        <C-v>               <C-R>+
exe         'inoremap <script>  <C-v> <C-G>u' . paste#paste_cmd['i']
exe         'vnoremap <script>  <C-v> '       . paste#paste_cmd['v']
nnoremap    <C-z>               u|"                                                             Undo
inoremap    <C-z>               <C-O>u
noremap     <C-R>               <C-R>|"                                                         Redo
inoremap    <C-R>               <C-O><C-R>
nnoremap    <CR>                :let @/ = ""<CR><CR>|"                                          Clear highlighted text occurences
nnoremap    <Tab>               >>|"                                                            Configure indent mechanism to act as in other editors
nnoremap    <S-Tab>             <<
inoremap    <S-Tab>             <C-D>
vnoremap    <Tab>               >gv
vnoremap    <S-Tab>             <gv
nnoremap    <M-Left>            <C-O>"                                                          Jump back to previous cursor location
nnoremap    <M-Right>           <C-I>"                                                          Jump to next cursor location


" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Build process
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap        <F7>                :YavideBuildRun<CR>|"                                           Build project
imap        <F7>                <ESC>:w<CR>:YavideBuildRun<CR>|"
