vim9script
g:mapleader = " "
g:vimwiki_list = [{'path': '~/notes/',
			\ 'syntax': 'markdown', 
			\ 'ext': '.md',
			\ 'links_space_char': '_'}]
g:vimwiki_global_ext = 0
execute pathogen#infect()
set nocompatible
set tabstop=4
filetype plugin on
syntax on
