" Represents the folder picker based on [fzf-lua]. The plugin
" needs to be installed in order to use this picker. Only works on
" Neovim.
"
" [fzf-lua]: https://github.com/ibhagwan/fzf-lua
function! himalaya#domain#folder#pickers#fzflua#select(callback, folders) abort
  call luaeval('require("himalaya.folder.pickers.fzflua").select')(a:callback, a:folders)
endfunction
