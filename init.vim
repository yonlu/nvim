" Initialize base requirements
if has('vim_starting')
	" Global Mappings "{{{
	" Use spacebar as leader and ; as secondary-leader
	" Required before loading plugins!
	let g:mapleader="\<Space>"
	let g:maplocalleader=';'
endif

" Basic settings
source $HOME/.config/nvim/plugins/dein.vim
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/keys/mappings.vim
source $HOME/.config/nvim/keys/vim-which-key.vim

" Plugin configs
source $HOME/.config/nvim/plugins/defx.vim
source $HOME/.config/nvim/plugins/vim-buffet.vim
