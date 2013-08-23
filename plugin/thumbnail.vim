" =============================================================================
" Filename: plugin/thumbnail.vim
" Version: 0.4
" Author: itchyny
" License: MIT License
" Last Change: 2013/08/23 14:34:49.
" =============================================================================

if exists('g:loaded_thumbnail') && g:loaded_thumbnail
  finish
endif

let s:save_cpo = &cpo
set cpo&vim

command! -nargs=* -complete=customlist,s:complete
      \ Thumbnail call thumbnail#new(<q-args>)

let g:loaded_thumbnail = 1

let &cpo = s:save_cpo
unlet s:save_cpo
