" Plugin {{{
call plug#begin()
" Beautify 
Plug 'phanviet/vim-monokai-pro' 
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'preservim/nerdtree'
" language
Plug 'fatih/vim-go'
Plug 'sebdah/vim-delve'

Plug 'Shougo/vimproc'
Plug 'Shougo/denite.nvim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'Yggdroot/LeaderF'
" snippet 
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

"Plug 'Shougo/defx.nvim'
"Plug 'roxma/nvim-yarp'
"Plug 'roxma/vim-hug-neovim-rpc'
" depence
call plug#end()
" }}}

" NERDTree config {{{
let NERDTreeShowBookmarks=1
let g:NERDTreeMinimalUI = v:true
" 显示行号
let NERDTreeShowLineNumbers=1
" 是否显示隐藏文件
let NERDTreeShowHidden=1
nmap <leader>ne :NERDTreeToggle<cr>
" }}}

" Airline config {{{
let g:airline#extensions#tabline#ignore_bufadd_pat#buffer_nr_show = '!|defx|gundo|nerd_tree|startify|tagbar|term://|undotree|vimfiler'
set laststatus=2
"  }}}

" LeaderF config{{{
let g:Lf_RootMarkers = ['.project', '.root', '.svn', '.git']
let g:Lf_WorkingDirectoryMode = 'Ac'
let g:Lf_WindowPosition = 'popup'
let g:Lf_PreviewInPopup = 1
let g:Lf_HideHelp  = 1
nnoremap <leader>ff :Leaderf file<cr><Tab>
nnoremap <leader>fb :Leaderf buffer<cr><Tab>
" }}}

" vim-go config{{{
let g:go_fmt_command = "goimports"
" }}}

" ultisnips config {{{
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-Tab>"
" If you want :UltiSnipsEdit to split your window.
"let g:UltiSnipsEditSplit="vertical"
" }}}


