set number
set hlsearch
syntax enable
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_browse_split = 2
let g:netrw_winsize = 25
map <F2> :vertical resize -4<CR>
map <F3> :vertical resize +4<CR>
set tabstop=4
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif
packadd! dracula
color dracula
