"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => GUI related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set font according to system
"if has("mac") || has("macunix")
"    set gfn=Source\ Code\ Pro:h12,Menlo:h11
"elseif has("win16") || has("win32")
"    set gfn=Source\ Code\ Pro:h12,Bitstream\ Vera\ Sans\ Mono:h11
"elseif has("linux")
    set gfn=Ubuntu\ Mono\ 12
"elseif has("unix")
"    set gfn=Monospace\ 11
"endif

" Disable scrollbars (real hackers don't use scrollbars for navigation!)
set guioptions-=r
set guioptions-=R
set guioptions-=l
set guioptions-=L
set guioptions-=T

" Colorscheme
if has("gui_running")
    set background=dark
    colorscheme gruvbox
end

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Coding related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set number
set cursorline
set colorcolumn=80
set cmdheight=1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Clipboard
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set clipboard^=unnamed
set clipboard^=unnamedplus

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Buffer Handling
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

noremap <C-Tab> :bnext<CR>
noremap <C-S-Tab> :bprevious<CR>
noremap <C-c> :Bclose<CR>

let g:buftabline_indicators=1
set switchbuf=useopen,usetab

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Split Pane Handling
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Attempt to make window switching even more elegant
" by binding CMD+ALT+LEFT or RIGHT
if has("gui_running")
    map <M-D-LEFT> <C-W>h
    map <M-D-RIGHT> <C-W>l
    map <M-D-UP> <C-W>k
    map <M-D-DOWN> <C-W>j
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Quickfix
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

autocmd FileType qf wincmd J
nnoremap <leader>a :cclose<CR>
map <C-n> :cn<CR>
map <C-p> :cp<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => GoDebug
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

nmap <C-b> :normal o_ = "breakpoint"<CR>

