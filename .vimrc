set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'junegunn/fzf'
Plugin 'tpope/vim-fugitive'
Plugin 'Quramy/vim-js-pretty-template'
Plugin 'Valloric/MatchTagAlways'
Plugin 'scrooloose/nerdtree'
Plugin 'styled-components/vim-styled-components'
Plugin 'epilande/vim-react-snippets'
Plugin 'epilande/vim-es2015-snippets'
Plugin 'terryma/vim-expand-region'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'gisphm/vim-gitignore'
Plugin 'flazz/vim-colorschemes'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'xolox/vim-session'
Plugin 'xolox/vim-misc'
Plugin 'rking/ag.vim'
Plugin 'whatyouhide/vim-gotham'
Plugin 'w0rp/ale'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'mattn/emmet-vim'
Plugin 'wakatime/vim-wakatime'
Plugin 'SirVer/ultisnips'
let g:jsx_ext_required = 0
call vundle#end()

" yayy leader on space!!!
" easy to use, both fingers to press
let mapleader = "\<Space>"

" blessed space w to save
nnoremap <Leader>w :w<CR>

" default syntax lookout
sy on

" make sure your vim has +clipboard enabled
" =====================================================
" espace double c to copy a selection
map <leader>cc "+y<CR>

" espace double p to paste IDENTED! Work like charm. 
map <leader>pp "+p<CR>
" =====================================================

" v to expand select
vmap v <Plug>(expand_region_expand)

" V to retract select
vmap <C-v> <Plug>(expand_region_shrink)

" disable line break to better code reading
set nowrap

" auto save session every 10sec
let g:session_autosave_periodic = 10

" auto complete with space and tab
let g:UltiSnipsExpandTrigger="<Leader><Tab>"

" theme with blue letters and dark bg
colorscheme gotham256

" fix backspace
set backspace=2


" fix utf8
set encoding=utf-8

" use reverse tab to find code
nnoremap \ :Ag<SPACE>
let g:ale_fixers = {
\   'javascript': ['eslint'],
\}

" fix lint on save
let g:ale_fix_on_save = 1

" auto reload files when changes outside vim
set autoread
set ai

" F4 to toggle a highlight on search result
noremap <F4> :set hlsearch! hlsearch?<CR>

" ctrl p to find files
noremap <C-p> :FZF <CR>

" Make a simple "search" text object.
" http://vim.wikia.com/wiki/Copy_or_change_search_hit
" It allows for replacing search matches with cs and then /././.
vnoremap <silent> s //e<C-r>=&selection=='exclusive'?'+1':''<CR><CR>
    \:<C-u>call histdel('search',-1)<Bar>let @/=histget('search',-1)<CR>gv
omap s :normal vs<CR>

filetype plugin indent on
" On pressing tab, insert 2 spaces
set expandtab
" show existing tab with 2 spaces width
set tabstop=2
set softtabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2

"ignore gitignore files on fzf
let $FZF_DEFAULT_COMMAND = 'ag -g ""'
