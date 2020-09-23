filetype off                  " required 

"Syntax hilighting
filetype plugin on 
syntax on

set termguicolors

hi clear SpellBad
hi SpellBad cterm=underline

autocmd BufRead,BufNewFile *.md,*.tex,*.txt,*.ms setlocal spell spelllang=en_us | set linebreak

"Reconfigure tab to print 4 space characters"
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" Python Semantic Completion
let g:ycm_python_binary_path = '/usr/bin/python3'

" set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"Plugin 'valloric/youcompleteme'

Plugin 'morhetz/gruvbox'

"Plugin 'scrooloose/syntastic'

"Plugin 'dkarter/bullets.vim'

"Plugin 'xuhdev/vim-latex-live-preview'


" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

let g:gruvbox_italic = 1
colorscheme gruvbox

" Settings fo Syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"
"let g:syntastic_always_populate_loc_list = 0
"let g:syntastic_auto_loc_list = 0
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"let g:syntastic_enable_highlighting = 0
"
"let g:syntastic_mode_map = {
"    \ "mode": "active",
"    \ "passive_filetypes": ["tex"] }
"

" User edits
vmap \c g<C-g>
nmap \c ggvG$g<C-g><ESC>`"

set number
set relativenumber

" copy and paste
vmap <C-c> "*yi
vmap <C-x> "*c
vmap <C-v> c<ESC>"*p
imap <C-v> <ESC>"*pa

" go down to below character instead of below line
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

nnoremap gj j
nnoremap gk k
vnoremap gj j
vnoremap gk k

map ++ ^i/* <Esc>$A */<Esc>
map -- ^d3l/*/<Return>d$

inoremap <C-k> <Esc>[sz=
nnoremap <C-k> [sz=
"inoremap <Esc>[sz=
"nnoremap  [s <Enter>

" for groff (ms)

autocmd FileType nroff nnoremap <Leader>v :!mupdf %:t:r.pdf& <Enter>
autocmd FileType nroff nnoremap <Leader>g :!groff -T pdf -ms % > %:t:r.pdf <Enter>

" for latex

autocmd FileType tex nnoremap <Leader>v :!mupdf %:t:r.pdf& <Enter>
autocmd FileType tex nnoremap <Leader>l :!pdflatex % <Enter>

" for pandoc

autocmd FileType markdown nnoremap <Leader>v :!mupdf %:t:r.pdf& <Enter>
autocmd FileType markdown nnoremap <Leader>p :!pandoc % -o %:r.pdf 

" changing color scheme
"nnoremap \
