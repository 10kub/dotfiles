vim9script

command WhiteSpaceTrailSearch /\s\+$

def WhiteSpaceTrailClearInRange(firstline: number, lastline: number)
  execute ":" .. firstline .. "," .. lastline .. "s/\\s\\+$//e"
enddef
command -range WhiteSpaceTrailClear call WhiteSpaceTrailClearInRange(<line1>, <line2>)
# clear whitespace in block
vnoremap <F10> <Esc>:'<,'>WhiteSpaceTrailClear<CR>


# show whitespace
noremap <F6> :set list!<CR>
inoremap <F6> :set list!<CR>
cnoremap <F6> :set list!<CR>

