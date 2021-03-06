" cmdex.vim - Extra commands
"
" c_CTRL-X
"   Input current buffer's directory on command line.
"   Import from https://github.com/koron/vim-kaoriya/blob/master/kaoriya/vim/plugins/kaoriya/plugin/cmdex.vim
cnoremap <C-X> <C-R>=<SID>GetBufferDirectory()<CR>
function! s:GetBufferDirectory()
  let path = expand('%:p:h')
  let cwd = getcwd()
  let dir = '.'
  if match(path, escape(cwd, '\')) != 0
    let dir = path
  elseif strlen(path) > strlen(cwd)
    let dir = strpart(path, strlen(cwd) + 1)
  endif
  return dir . (exists('+shellslash') && !&shellslash ? '\' : '/')
endfunction
