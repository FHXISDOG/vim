" General {{{
set nu
set nocompatible
set nobackup
set noswapfile
set history=1024
set autochdir
set whichwrap=b,s,<,>,[,]
set nobomb
" 去掉哔哔声
set belloff=all
set noerrorbells
set t_vb=
set backspace=indent,eol,start whichwrap+=<,>,[,]
" Vim 的默认寄存器和系统剪贴板共享
set clipboard+=unnamed
" 设置隐藏而不是 分割窗口
set hidden
" 设置 alt 键不映射到菜单栏
" }}}

" Lang & Encoding {{{
set fileencodings=utf-8,gbk2312,gbk,gb18030,cp936
set encoding=UTF-8
"set langmenu=zh_CN
let $LANG = 'en_US.UTF-8'
"language messages zh_CN.UTF-8
" }}}

" GUI {{{
colorscheme monokai_pro
"source $VIMRUNTIME/delmenu.vim
"source $VIMRUNTIME/menu.vim
if !exists('g:syntax_on')
	syntax enable
endif
"syntax on 
set termguicolors
set cursorline
set hlsearch
set so=10
set showmode
" 窗口大小
set lines=35 columns=140
" 分割出来的窗口位于当前窗口下边/右边
set splitbelow
set splitright
"不显示工具/菜单栏
set guioptions-=T
set guioptions-=m
set guioptions-=L
set guioptions-=r
set guioptions-=b
" 使用内置 tab 样式而不是 gui
set guioptions-=e
set nolist
"set guifont=Source\ Code\ Pro:h12
"set guifont=SauceCodePro\ Nerd\ Font:h12
set guifont=CaskaydiaCove\ Nerd\ Font\ Mono:h11
set guifontwide="思源黑体:h11"

" gui打开默认最大化
if has("gui_running")
  " GUI is running or is about to start.
  " Maximize gvim window (for an alternative on Windows, see simalt below).
    au GUIEnter * simalt ~x
endif
" }}}

" Format {{{
set autoindent
set smartindent
set tabstop=4
set expandtab
set softtabstop=4
set foldmethod=indent
" }}}

" key map {{{
" leader 键设置
let mapleader = ","
" comand line key map 
cnoremap <C-e> <END>
cnoremap <C-a> <HOME>
cnoremap <C-f> <Right>
cnoremap <C-b> <Left>
cnoremap <C-n> <Down>
cnoremap <C-p> <Up>
cnoremap <M-f> <S-Right>
cnoremap <M-b> <S-Left>
cnoremap <C-k> <C-\>estrpart(getcmdline(),0,getcmdpos()-1)<CR>
cnoremap <C-y> <C-r>+
" insert mode key map
inoremap <C-e> <END>
inoremap <C-a> <HOME>
inoremap <C-f> <Right>
inoremap <C-b> <Left>
inoremap <C-n> <Down>
inoremap <C-p> <Up>
inoremap <M-f> <S-Right>
inoremap <M-b> <S-Left>
inoremap <C-k> <ESC>d$i
inoremap <C-d> <Del>
" }}}

" defautl behivear{{{
" cd home dir when start
cd ~
" }}}

" global variable {{{
let g:vim_config_path="~/_vimrc"
" }}}

