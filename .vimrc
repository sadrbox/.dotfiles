set nocompatible           " Vim defaults rather than vi ones. Keep at top.

set backspace=2            " Make the backspace behave as most applications.
set autoindent             " Use current indent for new lines.
set display=lastline       " Show as much of the line as will fit.
set wildmenu               " Better tab completion in the commandline.
set wildmode=list:longest  " List all matches and complete to the longest match.
set showcmd                " Show (partial) command in bottom-right.
set expandtab              " Use spaces instead of tabs for indentation.
set smarttab               " Backspace removes 'shiftwidth' worth of spaces.
set smartindent
set number                 " Show line numbers.
set wrap                   " Wrap long lines.
set laststatus=2           " Always show the statusline.
set ruler                  " Show the ruler in the statusline.
set textwidth=80           " Wrap at n characters.
set incsearch              " Jump to search match while typing.
set hlsearch               " Highlight the last used search pattern.
set ignorecase             " Searching with / is case-insensitive.
set smartcase              " Disable 'ignorecase' if the term contains upper-case.
set nrformats-=octal       " Remove octal support from 'nrformats'.
set tabstop=2              " Size of a Tab character.
set shiftwidth=0           " Use same value as 'tabstop'.
set softtabstop=-1         " Use same value as 'shiftwidth'.
set formatoptions+=ncroqlj " Control automatic formatting.

" ===============================================================
" Custome settting

filetype plugin indent on

" set cindent 
" inoremap { {<CR>}<Esc>O<TAB>

set background=dark
set t_Co=256
set scrolloff=10
set nowrap
colorscheme OceanicNext
"colorscheme minimalist

set cursorline

set bomb
set encoding=utf-8
set fileencoding=utf-8

" Cursor line on insert more
if &term =~ "screen."
  let &t_ti.="\eP\e[1 q\e\\"
  let &t_SI.="\eP\e[5 q\e\\"
  let &t_EI.="\eP\e[1 q\e\\"
  let &t_te.="\eP\e[0 q\e\\"
else
  let &t_ti.="\<Esc>[1 q"
  let &t_SI.="\<Esc>[5 q"
  let &t_EI.="\<Esc>[1 q"
  let &t_te.="\<Esc>[0 q"
endif


" Проверка орфографии (правописания)
" Загрузить файлы словарей из http://ftp.vim.org/vim/runtime/spell/
" Генерация дополнительного файла словаря ru.words в ru.words.utg-8.spl - :mkspell words
" mkspell! ~/.vim/spell/words
"setlocal spell spelllang=ru_ru,en_us,words
"set spell spelllang=ru_ru,en_us,words

call plug#begin()

Plug 'lervag/vimtex'
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'xolox/vim-colorscheme-switcher'
Plug 'xolox/vim-misc'


"Plug 'cormacrelf/vim-colors-github'
" Plug 'srcery-colors/srcery-vim'
Plug 'rafi/awesome-vim-colorschemes'
"Plug 'rainglow/vim'

"Plugins for web development
Plug 'posva/vim-vue'
"Plug 'jiangmiao/auto-pairs'
"Plug 'prettier/vim-prettier'
Plug 'mattn/emmet-vim'
Plug 'cakebaker/scss-syntax.vim'
Plug 'pangloss/vim-javascript'
Plug 'plasticboy/vim-markdown'
Plug 'gregsexton/matchtag'
"Plug 'preservim/nerdcommenter'
"Plug 'townk/vim-autoclose'

"Plug 'shmargum/vim-sass-colors'
" Plug 'yuezk/vim-js'
" Plug 'maxmellon/vim-jsx-pretty'


"Text editing by markdown *.MD
"Plug 'JamshedVesuna/vim-markdown-preview'
"let g:vim_markdown_preview_github=1

"Plug 'turbio/bracey.vim' " probably not need

"Plug 'ParamagicDev/vim-medic_chalk'
"Plug 'tomasiser/vim-code-dark'
"Plug 'google/vim-maktaba'
"Plug 'google/vim-codefmt'
"Plug 'google/vim-glaive'

call plug#end()

" Vim setup
let g:airline_theme='minimalist'
let g:airline_powerline_fonts = 1


" Syntax highlighting plugin of javascript
let g:javascript_plugin_jsdoc = 1
" let g:vim_jsx_pretty_highlight_close_tag = 1


" Syntax highlighting html files
"au BufRead *.html set filetype=htmlm4 " Testing setu
"
" Syntax highlighting markdown files
let g:vim_markdown_folding_disabled = 1

" LaTex configurations
let g:tex_flavor = 'latex' "latex of pdflatex
let g:vimtex_view_general_viewer = 'evince'


filetype plugin indent on  " Enable filetype-specific settings.
syntax on                  " Enable syntax highlighting.

autocmd Filetype tex setl updatetime=100
let g:livepreview_previewer = 'evince'
let g:livepreview_engine = 'pdflatex'

let g:mapleader = ','
inoremap <F3> <C-o>:w<CR>
inoremap <F2> <ESC>gg=G<C-o><C-o>

nmap <F2> gg=G<C-o><C-o>

nmap <leader>w gg=G :w<CR><C-o><C-o>
nmap <leader>r :w<cr>:source %<cr>
nmap <F12> :LLPStartPreview<cr>

" Using x11 clipboard. For enabling need to install # sudo apt install vim-gtk
set clipboard=unnamed
"noremap <Leader>y "*y<CR>
"noremap <Leader>p "*p<CR>
"noremap <Leader>Y "+y<CR>
"noremap <Leader>P "+p<CR>



"-- AUTOCLOSE --
" https://medium.com/vim-drops/custom-autoclose-mappings-1ff90f45c6f5 
" 
"autoclose 2 lines below and position cursor in the middle 
inoremap '<CR> '<CR>'<ESC>O
inoremap `<CR> `<CR>`<ESC>O
inoremap "<CR> "<CR>"<ESC>O
inoremap (<CR> (<CR>)<ESC>O
inoremap [<CR> [<CR>]<ESC>O
inoremap {<CR> {<CR>}<ESC>O

"inoremap ''<CR> ''<Left>
"inoremap ``<CR> ``<Left>
"inoremap ""<CR> ""<Left>
"inoremap ()<CR> ()<Left>
"inoremap []<CR> []<Left>
"inoremap { {}<Left>


" ===============================================================
" Store temporary files in ~/.vim/tmp
set viminfo+=n~/.vim/tmp/viminfo
set backupdir=$HOME/.vim/tmp/backup
set dir=$HOME/.vim/tmp/swap
set viewdir=$HOME/.vim/tmp/view
if !isdirectory(&backupdir) | call mkdir(&backupdir, 'p', 0700) | endif
if !isdirectory(&dir)       | call mkdir(&dir, 'p', 0700)       | endif
if !isdirectory(&viewdir)   | call mkdir(&viewdir, 'p', 0700)   | endif

" Persist undo history between Vim sessions.
if has('persistent_undo')
  set undodir=$HOME/.vim/tmp/undo
  if !isdirectory(&undodir) | call mkdir(&undodir, 'p', 0700) | endif
endif

" Load matchit.vim plugin.
" Only load if the user hasn't installed a newer version.
if !exists('g:loaded_matchit') && findfile('plugin/matchit.vim', &rtp) ==# ''
  runtime! macros/matchit.vim
endif 

" Indent in visual and select mode automatically re-selects.
vnoremap > >gv
vnoremap < <gv

" Go to the last cursor location when opening a file.
augroup jump
  autocmd BufReadPost *
        \  if line("'\"") > 1 && line("'\"") <= line("$") && &ft !~# 'commit'
        \| exe 'normal! g`"'
        \| endif
augroup end

" Clean trailing whitespace.
fun! s:trim_whitespace()
  let l:save = winsaveview()
  keeppatterns %s/\s\+$//e
  call winrestview(l:save)
endfun
command! TrimWhitespace call s:trim_whitespace()
