autocmd FileType defx call s:defx_my_settings()
function! s:defx_my_settings() abort
  " Define mappings
  nnoremap <silent><buffer><expr> <CR>
  \ defx#is_directory() ? defx#do_action('open') : defx#do_action('preview')

  nnoremap <silent><buffer><expr> l
  \ defx#is_directory() ? defx#do_action('open_tree') : defx#do_action('preview')

  nnoremap <silent><buffer><expr> h
  \ defx#do_action('cd', ['..'])

  nnoremap <silent><buffer><expr> K
  \ defx#do_action('new_directory')

  nnoremap <silent><buffer><expr> N
  \ defx#do_action('new_file')

  nnoremap <silent><buffer><expr> d
  \ defx#do_action('remove')

  nnoremap <silent><buffer><expr> r
  \ defx#do_action('rename')

  nnoremap <silent><buffer><expr> q
  \ defx#do_action('quit')

  nnoremap <silent><buffer><expr> .
  \ defx#do_action('toggle_ignored_files')

  nnoremap <silent><buffer><expr> <Space>
  \ defx#do_action('toggle_select') . 'j'

endfunction
 
call defx#custom#option('_', {
\ 'winwidth': 30,
\ 'ignored_files': '.*,target*',
\ 'direction': 'topleft',
\ 'toggle': 1,
\ 'columns': 'indent:git:icons:filename:mark',
\ })
