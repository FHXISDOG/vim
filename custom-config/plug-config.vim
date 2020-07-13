" Plugin {{{
call plug#begin()
" Beautify 
Plug 'phanviet/vim-monokai-pro' 
Plug 'vim-airline/vim-airline' " status line bueutify
Plug 'vim-airline/vim-airline-themes'
Plug 'luochen1990/rainbow' " pathness colorful
Plug 'ryanoasis/vim-devicons' " add airline nerdtree ...  to nerd font
" tool
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'Yggdroot/LeaderF'
Plug 'tpope/vim-surround'  " quick change surround idetifier with c-s
Plug 'jiangmiao/auto-pairs'  " auto add pair 

" language
Plug 'fatih/vim-go'
Plug 'sebdah/vim-delve'
Plug 'Shougo/vimproc'
Plug 'tomtom/tcomment_vim'  " qucik add comment with g-c in visual mode
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" snippet 
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" backup plug
"Plug 'Shougo/denite.nvim'
"Plug 'Shougo/defx.nvim'
"Plug 'roxma/nvim-yarp'
"Plug 'roxma/vim-hug-neovim-rpc'
call plug#end()
" }}}

" NERDTree config {{{
let NERDTreeShowBookmarks=1
let g:NERDTreeMinimalUI = v:true
" 显示行号
let NERDTreeShowLineNumbers=1
" 是否显示隐藏文件
let NERDTreeShowHidden=1
let g:WebDevIconsUnicodeDecorateFolderNodes = v:true
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let NERDTreeDirArrows = 1
let g:WebDevIconsNerdTreeAfterGlyphPadding = ''
" 打开vim时没有打开文件自动打开nerdtree
autocmd vimenter * if !argc()|NERDTree|endif
"当NERDTree为剩下的唯一窗口时自动关闭
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" nerdtree git icon
let g:NERDTreeIndicatorMapCustom = { 
        \ "Modified"  : "✹",
        \ "Staged"    : "✚",
        \ "Untracked" : "✭",
        \ "Renamed"   : "➜",
        \ "Unmerged"  : "═",
        \ "Deleted"   : "✖",
        \ "Dirty"     : "✗",
        \ "Clean"     : "✔︎",
        \ 'Ignored'   : '☒',
        \ "Unknown"   : "?"
    \ }
" NERDTreeToggle key map
nmap <leader>ne :NERDTreeToggle<cr>
" }}}

" Airline config {{{
let g:airline_powerline_fonts = 1
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

" rainbow config {{{
let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle
" }}}





" Defx config{{{
" 使用 ;e 切换显示文件浏览，使用 ;a 查找到当前文件位置
"augroup vimrc_defx
"  autocmd!
"  autocmd FileType defx call s:defx_mappings()                                  "Defx mappings
"  autocmd VimEnter * call s:setup_defx()
"augroup END
"
"
"nnoremap <silent><Leader>n :call <sid>defx_open()<CR>
"nnoremap <silent><Leader>hf :call <sid>defx_open({ 'find_current_file': v:true })<CR>
"let s:default_columns = 'indent:git:icons:filename'
"
"function! s:setup_defx() abort
"  silent! call defx#custom#option('_', {
"        \ 'columns': s:default_columns,
"        \ })
"
"  silent! call defx#custom#column('filename', {
"        \ 'min_width': 80,
"        \ 'max_width': 80,
"        \ })
"
"  silent! call s:defx_open({ 'dir': expand('<afile>') })
"endfunction
"
"function s:get_project_root() abort
"  let l:git_root = ''
"  let l:path = expand('%:p:h')
"  let l:cmd = systemlist('cd '.l:path.' && git rev-parse --show-toplevel')
"  if !v:shell_error && !empty(l:cmd)
"    let l:git_root = fnamemodify(l:cmd[0], ':p:h')
"  endif
"
"  if !empty(l:git_root)
"    return l:git_root
"  endif
"
"  return getcwd()
"endfunction
"
"function! s:defx_open(...) abort
"  let l:opts = get(a:, 1, {})
"  let l:is_file = has_key(l:opts, 'dir') && !isdirectory(l:opts.dir)
"
"  if  &filetype ==? 'defx' || l:is_file
"    return
"  endif
"
"  let l:path = s:get_project_root()
"
"  if has_key(l:opts, 'dir') && isdirectory(l:opts.dir)
"    let l:path = l:opts.dir
"  endif
"
"  let l:args = '-winwidth=40 -direction=topleft -split=vertical'
"
"  if has_key(l:opts, 'find_current_file')
"    call execute(printf('Defx %s -search=%s %s', l:args, expand('%:p'), l:path))
"  else
"    call execute(printf('Defx -toggle %s %s', l:args, l:path))
"    call execute('wincmd p')
"  endif
"
"  return execute("norm!\<C-w>=")
"endfunction
"
"function s:defx_toggle_tree() abort
"  if defx#is_directory()
"    return defx#do_action('open_or_close_tree')
"  endif
"  return defx#do_action('drop')
"endfunction
"
"function! s:defx_mappings() abort
"  nnoremap <silent><buffer><expr> o <sid>defx_toggle_tree()
"  nnoremap <silent><buffer><expr> O defx#do_action('open_tree_recursive')
"  nnoremap <silent><buffer><expr> <CR> <sid>defx_toggle_tree()
"  nnoremap <silent><buffer><expr> <2-LeftMouse> <sid>defx_toggle_tree()
"  nnoremap <silent><buffer><expr> C defx#is_directory() ? defx#do_action('multi', ['open', 'change_vim_cwd']) : 'C'
"  nnoremap <silent><buffer><expr> s defx#do_action('open', 'botright vsplit')
"  nnoremap <silent><buffer><expr> R defx#do_action('redraw')
"  nnoremap <silent><buffer><expr> U defx#do_action('multi', [['cd', '..'], 'change_vim_cwd'])
"  nnoremap <silent><buffer><expr> H defx#do_action('toggle_ignored_files')
"  nnoremap <silent><buffer><expr> <Space> defx#do_action('toggle_select') . 'j'
"  nnoremap <silent><buffer><expr> j line('.') == line('$') ? 'gg' : 'j'
"  nnoremap <silent><buffer><expr> k line('.') == 1 ? 'G' : 'k'
"  nnoremap <silent><buffer> J :call search('[]')<CR>
"  nnoremap <silent><buffer> K :call search('[]', 'b')<CR>
"  nnoremap <silent><buffer><expr> yy defx#do_action('yank_path')
"  nnoremap <silent><buffer><expr> a defx#do_action('new_multiple_files')
"  nnoremap <silent><buffer><expr> r defx#do_action('rename')
"  nnoremap <nowait><silent><buffer><expr> c defx#do_action('copy')
"  nnoremap <silent><buffer><expr> x defx#do_action('move')
"  nnoremap <silent><buffer><expr> X defx#do_action('execute_system')
"  nnoremap <silent><buffer><expr> p defx#do_action('paste')
"  nnoremap <nowait><silent><buffer><expr> d defx#do_action('remove')
"  nnoremap <silent><buffer><expr> q defx#do_action('quit')
"  nnoremap <silent><buffer><expr> B defx#do_action('add_session')
"  nnoremap <silent><buffer><expr> <Leader>n defx#do_action('quit')
"  silent exe 'nnoremap <silent><buffer><expr> tt defx#do_action("toggle_columns", "'.s:default_columns.':size:time")'
"endfunction
" }}}
