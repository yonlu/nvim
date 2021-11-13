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

" Explorer mappings
let g:which_key_map['e'] = [ ':NvimTreeToggle', 'open explorer' ]

" Telescope mappings
let g:which_key_map['f'] = {
      \ 'name' : '+find' ,
      \ 'f' : [':Telescope find_files'     , 'file'],
      \ 'g' : [':Telescope live_grep'      , 'grep'],
      \ 'b' : [':Telescope buffers'        , 'buffers'],
      \ 'h' : [':Telescope help_tags'      , 'help tags'],
      \ 'c' : [':Telescope git_bcommits'      , 'git commits'],
      \ }

" Git mappings
let g:which_key_map['g'] = {
      \ 'name' : '+Git' ,
      \ 'b' : [':Git branch'      , 'branches'],
      \ 'c' : [':Git commit'      , 'commits'],
      \ 'l' : [':G log'           , 'log'],
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
      \ 'c' : [':FloatermNew --autoclose=0 g++ -Wall -std=c++11 % -o %< && ./%<'      , 'compiler'],
      \ 'r' : [':FloatermNew --height=0.6 --width=0.4 --wintype=float --name=floaterm1 --position=topright --autoclose=2 ranger'      , 'ranger'],
      \ }

let g:which_key_map['r'] = {
      \ 'name' : '+reload',
      \ 'v' : [':source $MYVIMRC'      , 'vimrc'],
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

" Register which key map
call which_key#register('<Space>', "g:which_key_map")
