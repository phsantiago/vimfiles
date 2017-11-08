execute pathogen#infect()
call pathogen#helptags()
let mapleader = "\<Space>"
nnoremap <Leader>w :w<CR>
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)
vnoremap <silent> s //e<C-r>=&selection=='exclusive'?'+1':''<CR><CR>
    \:<C-u>call histdel('search',-1)<Bar>let @/=histget('search',-1)<CR>gv
omap s :normal vs<CR>
set nowrap
"set tabstop=4       " The width of a TAB is set to 4.
"set shiftwidth=4    " Indents will have a width of 4
"set softtabstop=4   " Sets the number of columns for a TAB
"set expandtab 
noremap <F4> :set hlsearch! hlsearch?<CR>
noremap <C-p> :FZF <CR>
set ai


call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
    \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql'] }

"ES2015 code snippets (Optional)
Plug 'epilande/vim-es2015-snippets'

" React code snippets
Plug 'epilande/vim-react-snippets'

" Ultisnips
Plug 'SirVer/ultisnips'

Plug 'styled-components/vim-styled-components'


let g:UltiSnipsExpandTrigger="<Leader><Tab>"
call plug#end()
call vundle#begin()
Plugin 'pangloss/vim-javascript'
Plugin 'gisphm/vim-gitignore'
Plugin 'mxw/vim-jsx'
Plugin 'flazz/vim-colorschemes'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'xolox/vim-session'
Plugin 'xolox/vim-misc'
Plugin 'rking/ag.vim'
Plugin 'whatyouhide/vim-gotham'
let g:jsx_ext_required = 0
call vundle#end()

"colorscheme vimbrant
colorscheme gotham256
