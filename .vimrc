set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"Plugin 'flowtype/vim-flow'
Plugin 'ElmCast/elm-vim'
Plugin 'HerringtonDarkholme/yats.vim'
Plugin 'mhartington/nvim-typescript', {'do': './install.sh'}
Plugin 'Shougo/deoplete.nvim'
Plugin 'Shougo/denite.nvim'
Plugin 'Quramy/vim-js-pretty-template'
Plugin 'Valloric/MatchTagAlways'
Plugin 'easymotion/vim-easymotion'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'epilande/vim-es2015-snippets'
Plugin 'epilande/vim-react-snippets'
Plugin 'flazz/vim-colorschemes'
Plugin 'Quramy/tsuquyomi'
Plugin 'gisphm/vim-gitignore'
Plugin 'junegunn/fzf'
Plugin 'mattn/emmet-vim'
Plugin 'metakirby5/codi.vim'
Plugin 'mileszs/ack.vim'
Plugin 'moll/vim-node'
Plugin 'mxw/vim-jsx'
Plugin 'peitalin/vim-jsx-typescript'
Plugin 'scrooloose/nerdtree'
Plugin 'sergioramos/jsctags'
Plugin 'sheerun/vim-polyglot'
Plugin 'styled-components/vim-styled-components'
Plugin 'terryma/vim-expand-region'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tomarrell/vim-npr'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'w0rp/ale'
Plugin 'wakatime/vim-wakatime'
Plugin 'whatyouhide/vim-gotham'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-session'
call vundle#end()
let g:jsx_ext_required = 0

" yayy leader on space!!!
" easy to use, both fingers to press
let mapleader = "\<Space>"

" blessed space w to save
nnoremap <Leader>w :w<CR>

function MyNerdToggle()
    if &filetype == 'nerdtree'
        :NERDTreeToggle
    else
        :NERDTreeFind
    endif
endfunction

nnoremap <Leader>n :call MyNerdToggle()<CR>

" default syntax lookout
sy on

" make sure your vim has +clipboard enabled
" =====================================================
" espace double c to copy a selection
map <leader><leader>c "+y<CR>

" espace double p to paste IDENTED! Work like charm. 
map <leader><leader>v "+p<CR>
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
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

nnoremap \ :Ack!<SPACE>

" ale rules
let g:ale_linters = {
\  'javascript': ['eslint'],
\}
"  'javascript': ['eslint', 'flow'],
let b:ale_fixers = ['prettier', 'eslint']
highlight clear ALEErrorSign " otherwise uses error bg color (typically red)
highlight clear ALEWarningSign " otherwise uses error bg color (typically red)
let g:ale_sign_error = '🐞' " could use emoji
let g:ale_sign_warning = '👉' " could use emoji
let g:ale_statusline_format = ['X %d', '? %d', '']
" %linter% is the name of the linter that provided the message
" %s is the error or warning message
let g:ale_echo_msg_format = '%linter% says %s'

" Map keys to navigate between lines with errors and warnings.
nnoremap <leader>an :ALENextWrap<cr>
nnoremap <leader>ap :ALEPreviousWrap<cr>

" fix lint on save
let g:ale_fix_on_save = 1
let g:ale_javascript_prettier_use_local_config = 1

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

" snippet to debug js
iabbr dbg debugger //eslint-disable-line

" line number
set number relativenumber

" disable annoying error bell
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=



nmap <silent> <leader>j :ALENext<cr>
nmap <silent> <leader>k :ALEPrevious<cr>



" General conceal settings. Will keep things concealed
" even when your cursor is on top of them.
set conceallevel=1

" vim-javascript conceal settings.
"let g:javascript_conceal_function             = "ƒ"
"let g:javascript_conceal_null                 = "ø"
"let g:javascript_conceal_NaN                  = "ℕ"
"let g:javascript_conceal_noarg_arrow_function = "λ"
"let g:javascript_conceal_arrow_function       = "👉"
"let g:flow#autoclose = 1

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" read project vimrc
set exrc
set secure
