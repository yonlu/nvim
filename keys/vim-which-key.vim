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

" Change the colors if you want
highlight default link WhichKey          Operator
highlight default link WhichKeySeperator DiffAdded
highlight default link WhichKeyGroup     Identifier
highlight default link WhichKeyDesc      Function

" Fuzzy finder mappings
let g:which_key_map.f = {
      \ 'name' : '+find' ,
      \ 'f' : [':Telescope find_files'     , 'file'],
      \ 'g' : [':Telescope live_grep'      , 'grep'],
      \ 'b' : [':Telescope buffers'        , 'buffers'],
      \ 'h' : [':Telescope help_tags'      , 'help tags'],
      \ 'c' : [':Telescope colorscheme'      , 'colorschemes'],
      \ }

let g:which_key_map.g = {
      \ 'name' : '+git' ,
      \ 'b' : [':Telescope git_branches'      , 'branches'],
      \ 'c' : [':Telescope git_commits'      , 'commits'],
      \ 's' : [':Telescope git_status'       , 'status'],
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
      \ 'H' : ['<C-W>5<'     , 'expand-window-left'],
      \ 'J' : [':resize +5'  , 'expand-window-below'],
      \ 'L' : ['<C-W>5>'     , 'expand-window-right'],
      \ 'K' : [':resize -5'  , 'expand-window-up'],
      \ '=' : ['<C-W>='      , 'balance-window'],
      \ }

" Dein mappings
let g:which_key_map['p'] = {
      \ 'name' : '+plugins' ,
      \ 'u' : [':DeinUpdate'                          , 'update all plugins'],
      \ 'r' : [':call dein#recache_runtimepath()'     , 'reach runtime path'],
      \ }

let g:which_key_map['t'] = {
      \ 'name' : '+terminal',
      \ 'n' : [':FloatermNew'      , 'terminal'],
      \ 'c' : [':FloatermNew --autoclose=0 g++ % -o %< && ./%<'      , 'compiler'],
      \ }
" Buffer Mappings
noremap <Leader><Tab> :Bw<CR>
noremap <Leader><S-Tab> :Bw!<CR>
noremap <C-t> :tabnew split<CR>
nmap <leader>1 <Plug>BuffetSwitch(1)
nmap <leader>2 <Plug>BuffetSwitch(2)
nmap <leader>3 <Plug>BuffetSwitch(3)
nmap <leader>4 <Plug>BuffetSwitch(4)
nmap <leader>5 <Plug>BuffetSwitch(5)
nmap <leader>6 <Plug>BuffetSwitch(6)
nmap <leader>7 <Plug>BuffetSwitch(7)
nmap <leader>8 <Plug>BuffetSwitch(8)
nmap <leader>9 <Plug>BuffetSwitch(9)

let g:which_key_map.1 = 'select window-1'
let g:which_key_map.2 = 'select window-2'
let g:which_key_map.3 = 'select window-3'
let g:which_key_map.4 = 'select window-4'
let g:which_key_map.5 = 'select window-5'
let g:which_key_map.6 = 'select window-6'
let g:which_key_map.7 = 'select window-7'
let g:which_key_map.8 = 'select window-8'
let g:which_key_map.9 = 'select window-9'

" Others

let g:which_key_map['e'] = [ ':Defx -resume -toggle -buffer-name=tab`tabpagenr()`<CR>`'                      , 'open explorer' ]
let g:which_key_map['h'] = [ '<C-W>s'                     , 'split below']
let g:which_key_map['v'] = [ '<C-W>v'                     , 'split right']


" Register which key map
call which_key#register('<Space>', "g:which_key_map")
