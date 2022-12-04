if exists('g:loaded_mdoom') | finish | endif " prevent loading file twice
let s:save_cpo = &cpo " save user coptions
set cpo&vim           " reset them to defaults
" command to run our plugin
command! MDoom lua require("mdoom").startMD()
command! MDoomStop lua require("mdoom").stopMD()
let &cpo = s:save_cpo " and restore after
unlet s:save_cpo
let g:loaded_mdoom = 1
