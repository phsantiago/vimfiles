set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'junegunn/fzf'
Plugin 'scrooloose/nerdtree'
Plugin 'styled-components/vim-styled-components'
Plugin 'epilande/vim-react-snippets'
Plugin 'epilande/vim-es2015-snippets'
Plugin 'pangloss/vim-javascript'
Plugin 'gisphm/vim-gitignore'
Plugin 'mxw/vim-jsx'
Plugin 'flazz/vim-colorschemes'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'xolox/vim-session'
Plugin 'xolox/vim-misc'
Plugin 'rking/ag.vim'
Plugin 'whatyouhide/vim-gotham'
Plugin 'w0rp/ale'
Plugin 'SirVer/ultisnips'
let g:jsx_ext_required = 0
call vundle#end()

let g:UltiSnipsExpandTrigger="<Leader><Tab>"

colorscheme gotham256

nnoremap \ :Ag<SPACE>
let g:ale_fixers = {
\   'javascript': ['eslint'],
\}

let g:ale_fix_on_save = 1

let mapleader = "\<Space>"
nnoremap <Leader>w :w<CR>
map <leader>cc "+y<CR>
map <leader>pp "+p<CR>
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)
vnoremap <silent> s //e<C-r>=&selection=='exclusive'?'+1':''<CR><CR>
    \:<C-u>call histdel('search',-1)<Bar>let @/=histget('search',-1)<CR>gv
omap s :normal vs<CR>
set nowrap

" auto reload files when changes outside vim
set autoread

"set tabstop=4       " The width of a TAB is set to 4.
"set shiftwidth=4    " Indents will have a width of 4
"set softtabstop=4   " Sets the number of columns for a TAB
"set expandtab 
noremap <F4> :set hlsearch! hlsearch?<CR>
noremap <C-p> :FZF <CR>
set ai
