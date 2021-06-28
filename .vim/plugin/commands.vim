command! WhiteSpaceTrailSearch /\s\+$


command! EncodeDetectThis :!chardet3 %
command! EncodingSupportedShow :help encoding-values

command! PathFolderAbsoluteCopy :let @+=expand('%:p:h')
command! PathFolderRelativeCopy :let @+=expand('%:h')
command! PathFileAbsoluteCopy :let @+=expand('%:p')
command! PathFileRelativeCopy :let @+=expand('%')
command! FileNameCopy :let @+=expand('%:t')

command! FileEncodingShow :echo &fileencoding?&fileencoding:&encoding
command! FileFormatShow :echo &fileformat
command! FileTypeShow :echo &filetype
command! FileTabSizeShow :echo &tabstop

if executable('jq')
	command! JsonFormatThis :%!jq .
endif

command! BufferCloseOthers :%bd|e#

command! IndentationToSpaceConvert :setlocal expandtab|retab
command! IndentationToTabsConvert :setlocal noexpandtab|%retab!
command! IndentUsingSpace :setlocal expandtab
command! IndentUsingTab :setlocal expandtab!

command! SnippetsOpen :execute 'edit ~/.vim/UltiSnips/'

if !exists("*s:ReloadConfigs")
	function s:ReloadConfigs()
		let is_buffer_empty = line('$') == 1 && getline(1) == ''
		let is_name_buffer_empty = bufname() == ''
		if !is_buffer_empty && !is_name_buffer_empty
			execute 'write'
		endif
		execute 'source ~/.vimrc'
		execute 'source ~/.vim/plugin/mappings.vim'
		if has("gui_running")
			execute 'source ~/.vim/.gvimrc'
		endif
		if !is_buffer_empty && !is_name_buffer_empty
			execute 'edit'
		endif
	endfunction
endif
command! ReloadConfigs call s:ReloadConfigs()


function s:FileRename()
	let old_name = expand('%')
	let new_name = input('New file name: ', expand('%'), 'file')
	if new_name != '' && new_name != old_name
		execute 'saveas ' . new_name
		execute 'silent !rm ' . old_name
		redraw!
	endif
endfunction
command! FileRename call s:FileRename()
