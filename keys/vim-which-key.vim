" Map leader to which_key
nnoremap <silent> <leader> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler


" Create map to add keys to
let g:which_key_map =  {}

" Define a separator
let g:which_key_sep = '→'

let g:which_key_map['e'] = [ ':Defx -columns=icons:indent:filename:type -resume -toggle -buffer-name=tab`tabpagenr()`<CR>`', 'open explorer' ]

" Telescope mappings
let g:which_key_map['f'] = {
      \ 'name' : '+find' ,
      \ 'f' : [':Telescope find_files'     , 'file'],
      \ 'g' : [':Telescope live_grep'      , 'grep'],
      \ 'b' : [':Telescope buffers'        , 'buffers'],
      \ 'h' : [':Telescope help_tags'      , 'help tags'],
      \ 'c' : [':Telescope colorscheme'      , 'colorschemes'],
      \ }

" Git mappings
let g:which_key_map['g'] = {
      \ 'name' : '+Git' ,
      \ 'b' : [':Git branch'      , 'branches'],
      \ 'c' : [':Git commit'      , 'commits'],
      \ 's' : [':G'               , 'status'],
      \ }

" Dein mappings
let g:which_key_map['p'] = {
      \ 'name' : '+plugins' ,
      \ 'u' : [':DeinUpdate'                          , 'update all plugins'],
      \ 'r' : [':call dein#recache_runtimepath()'     , 'reach runtime path'],
      \ }

" Terminal
let g:which_key_map['t'] = {
      \ 'name' : '+terminal',
      \ 'n' : [':FloatermNew'      , 'terminal'],
      \ 'c' : [':FloatermNew --autoclose=0 g++ -Wall -g -std=c++11 % -o %< && ./%<'      , 'compiler'],
      \ }

" Window mappings
let g:which_key_map['w'] = {
      \ 'name' : '+windows',
      \ 'w' : ['<C-W>w'      , 'other-window'],
      \ 'd' : ['<C-W>c'      , 'delete-window'],
      \ 'h' : ['<C-W>h'      , 'window-left'],
      \ 'j' : ['<C-W>j'      , 'window-below'],
      \ 'l' : ['<C-W>l'      , 'window-right'],
      \ 'k' : ['<C-W>k'      , 'window-up'],
      \ 's' : ['<C-W>s'      , 'split-below'],
      \ 'v' : ['<C-W>v'      , 'split-right'],
      \ 'H' : ['<C-W>5<'     , 'expand-window-left'],
      \ 'J' : [':resize +5'  , 'expand-window-below'],
      \ 'L' : ['<C-W>5>'     , 'expand-window-right'],
      \ 'K' : [':resize -5'  , 'expand-window-up'],
      \ '=' : ['<C-W>='      , 'balance-window'],
      \ }

" Buffer Mappings
noremap <Leader><Tab> :BufferClose<CR>
nmap <leader>1 <Plug>:BufferGoto 1<CR>
nmap <leader>2 <Plug>:BufferGoto 2<CR>
nmap <leader>3 <Plug>:BufferGoto 3<CR>
nmap <leader>4 <Plug>:BufferGoto 4<CR>
nmap <leader>5 <Plug>:BufferGoto 5<CR>
nmap <leader>6 <Plug>:BufferGoto 6<CR>
nmap <leader>7 <Plug>:BufferGoto 7<CR>
nmap <leader>8 <Plug>:BufferGoto 8<CR>
nmap <leader>9 <Plug>:BufferGoto 9<CR>

" Ignored labels
let g:which_key_map.1 = 'which_key_ignore'
let g:which_key_map.2 = 'which_key_ignore'
let g:which_key_map.3 = 'which_key_ignore'
let g:which_key_map.4 = 'which_key_ignore'
let g:which_key_map.5 = 'which_key_ignore'
let g:which_key_map.6 = 'which_key_ignore'
let g:which_key_map.7 = 'which_key_ignore'
let g:which_key_map.8 = 'which_key_ignore'
let g:which_key_map.9 = 'which_key_ignore'

" Register which key map
call which_key#register('<Space>', "g:which_key_map")
