" Startup {{{

filetype indent plugin on


" vim �ļ��۵���ʽΪ marker
augroup ft_vim
    au!

    au FileType vim setlocal foldmethod=marker
augroup END
" }}}

let g:python3_host_prog = 'C:/Users/Finger/AppData/Local/Programs/Python/Python38/python.exe'
set pythonthreehome=~/AppData/Local/Programs/Python/Python38/
set pythonthreedll=~/AppData/Local/Programs/Python/Python38/python38.dll
" orhter config {{{
source ~/vimfiles/custom-config/basic-config.vim
source ~/vimfiles/custom-config/plug-config.vim
source ~/vimfiles/custom-config/custom-config.vim
" }}}



