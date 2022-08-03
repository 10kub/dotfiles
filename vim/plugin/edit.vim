vim9script

set tabstop=8 softtabstop=4 shiftwidth=4 expandtab
set autoindent
set backspace=indent,eol,start
# set formatoptions=qjl
augroup CustomFormatOption
  autocmd FileType * {
    setlocal formatoptions-=c formatoptions-=r formatoptions-=o
  }
augroup END

command IndentConvertToSpace :setlocal expandtab|retab
command IndentConvertToTabs :setlocal noexpandtab|%retab!
command IndentUse4Spaces :set tabstop=8 softtabstop=4 shiftwidth=4 expandtab
command IndentUse2Spaces :setlocal tabstop=8 softtabstop=2 shiftwidth=2 expandtab
command IndentUse8Tab :setlocal tabstop=8 softtabstop=8 shiftwidth=8 noexpandtab
command EditorShowTabSize :echo &tabstop
command EditorLastLineEndsNewLineToggle :setlocal nofixendofline!
