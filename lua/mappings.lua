vim.g.mapleader = ','

vim.cmd([[
if has('mac')
	nnoremap <silent> ˚ <C-W>k
	nnoremap <silent> ∆ <C-W>j
	nnoremap <silent> ˙ <C-W>h
	nnoremap <silent> ¬ <C-W>l
	nnoremap <silent>  <C-W>K
	nnoremap <silent> Ô <C-W>J
	nnoremap <silent> Ó <C-W>H
	nnoremap <silent> Ò <C-W>L
	if has('terminal')
		tnoremap <silent> ˚ <C-W>k
		tnoremap <silent> ∆ <C-W>j
		tnoremap <silent> ˙ <C-W>h
		tnoremap <silent> ¬ <C-W>l
	endif
else
	nnoremap <silent> <A-Up> <C-W>k
	nnoremap <silent> <A-Down> <C-W>j
	nnoremap <silent> <A-Left> <C-W>h
	nnoremap <silent> <A-Right> <C-W>l
	if has('terminal')
		tnoremap <silent> <A-Up> <C-W>k
		tnoremap <silent> <A-Down> <C-W>j
		tnoremap <silent> <A-Left> <C-W>h
		tnoremap <silent> <A-Right> <C-W>l
	endif
endif

"Quick diff toggle
nnoremap <F10> :call DiffToggle()<CR>
function! DiffToggle()
	if &diff
		silent diffoff!
	else
		silent diffthis
	endif
endfunction
]])
