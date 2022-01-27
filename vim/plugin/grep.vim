vim9script

# grep in project
nnoremap <Leader>gg :AsyncRun grep -rni --exclude="tags" --exclude-dir=".git" -e '' ./<left><left><left><left>
vnoremap <Leader>gg y:AsyncRun grep -rni --exclude="tags" --exclude-dir=".git" -e '<C-R>"' ./


def GetRelativePathForGrep(): string
  var path = expand('%:h')
  if path == '.'
    return './'
  endif
  var rel_path_match = match(path, "^\./")
  var abs_path_match = match(path, "^\/")
  if rel_path_match != -1 || abs_path_match != -1
    return path
  endif
  return './' .. path .. '/'
enddef

# grep in current directory
nnoremap <expr> <Leader>gd ":AsyncRun grep -rnie '' " ..  <SID>GetRelativePathForGrep()
vnoremap <expr> <Leader>gd "y:AsyncRun grep -rnie '<C-R>\"' " ..  <SID>GetRelativePathForGrep()

# grep by filetype
nnoremap <Leader>gi :AsyncRun grep -rni --include \*.go -e '' ./<left><left><left><left>

# grep in current buffer
noremap <expr> <Leader>gb ":AsyncRun grep -nirHe '' " .. expand('%') 
vnoremap <expr> <Leader>gb "y:AsyncRun grep -nrHe '<C-R>\"' " .. expand('%') 


def SearchInOpenedBuffers(pattern: string)
  execute 'cclose'
  execute 'cexpr []'
  execute 'bufdo vimgrepadd /' .. pattern .. '/g %'
  execute 'cwindow'
enddef
command -nargs=1 SearchInOpenedBuffers SearchInOpenedBuffers(<f-args>)


# grep for regex (-P is enable PATTERNS are Perl regular expressions)
# nnoremap <Leader>gr :AsyncRun grep -nroHP '' ./<left><left><left><left>
nnoremap <expr> <Leader>gr ":AsyncRun grep -nroHP '' " .. expand('%')
