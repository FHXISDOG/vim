" Startup {{{

filetype indent plugin on


" vim 文件折叠方式为 marker
augroup ft_vim
    au!

    au FileType vim setlocal foldmethod=marker
augroup END
" }}}


" orhter config {{{
source ~/vimfiles/custom-config/basic-config.vim
source ~/vimfiles/custom-config/vim-plug.vim
source ~/vimfiles/custom-config/plug-config.vim
" }}}



