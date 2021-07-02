let g:user_emmet_leader_key='<leader>'
"let mapleader = ","
"I decided to use the default leader once I found out about the ',' command

" load plugins
packloadall
set runtimepath+=~/.vim/bundle/ctrlp.vim
" settings and parameters
set laststatus=2
set list
set listchars=tab:\|\ ,extends:»,nbsp:.,trail:.
set number
set relativenumber
set numberwidth=3
set nowrap
set nocompatible
" enable mouse support
set mouse=a
" set autochdir
set shiftwidth=2
set tabstop=2
set autoindent
set showmode
hi ModeMsg term=reverse cterm=reverse
set showcmd
set lazyredraw
set path+=**
set wildmenu
set wildmode=list:longest
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set undofile
set undodir=~/.vim/.undo//
set backupdir=~/.vim/.backup//
set directory=~/.vim/.swp//
set ignorecase
set smartcase
set gdefault
set incsearch
set hlsearch
set splitbelow
set splitright
set equalalways
set background=dark
"set scrolloff=2
set scroll=10
set statusline=%f
set statusline+=%m
set statusline+=[B:%n]
set statusline+=%{FileSize(line2byte('$')+len(getline('$')))}
set statusline+=%=
set statusline+=[%c,\
set statusline+=%l]

function! FileSize(bytes)
  let l:bytes = a:bytes | let l:sizes = ['B', 'KB', 'MB', 'GB'] | let l:i = 0
  while l:bytes >= 1024 | let l:bytes = l:bytes / 1024.0 | let l:i += 1 | endwhile
  return l:bytes > 0 ? printf(' %.1f%s ', l:bytes, l:sizes[l:i]) : ''
endfunction


"improve system paste by removing indenting
set pastetoggle=<Leader>p
" turn off parentheses and brackets matching/hilighting
" let loaded_matchparen = 1
set showmatch
set matchtime=1

filetype plugin on
filetype indent on
set omnifunc=syntaxcomplete#Complete

" Set to auto read when a file is changed from the outside
set autoread

" Key Mappings
" reload .vimrc
nnoremap <silent> <leader>sv :so $MYVIMRC<cr>


nnoremap <silent> <Leader>\| :set cursorcolumn!<cr>
nnoremap <Up>    :resize +2<CR>
nnoremap <Down>  :resize -2<CR>
nnoremap <Left>  :vertical resize -2<CR>
nnoremap <Right> :vertical resize +2<CR>

nnoremap <S-Enter> O<Esc>
nnoremap <CR> o<Esc>
nnoremap <leader>va ggVG

nnoremap <silent> <leader><space> :noh<cr> :unsilent echo "search hilite turned off"<cr>
nnoremap <silent> <leader><space><cr> :let @/ = ""<cr>:unsilent echo "search buffer cleared"<cr>
" mappings for jumping between splits - consistent with tab navigation
" nnoremap <tab> %
" vnoremap <tab> %

" paste into visual selection and recopy to paste again
xnoremap p pgvy

" Y to yank to end of line
nnoremap Y y$

" move to beginning of line
nnoremap B ^

" map jj and kk to escape to more easily get out of insert mode 
inoremap jj <esc>
inoremap kk <esc>

" use <Space> to jump into insert mode for just one character
nnoremap <Space> i_<Esc>r

" JavaScript comments
" type // to move to beginning of line and comment it out 
nnoremap // I// <Esc>
" type ?? to move to beginning of line and remove commenting 
nnoremap ?? ^xxx

"split line inserting a carriage return
nnoremap K i<CR><Esc>
vnoremap . :norm.<cr>

"maximize/mimimize/normalize active split window pane
nnoremap \| <C-W>\|
nnoremap = <C-W>=

"type line number plus <CR> to go to that line
"nnoremap  <CR> G
"split line at cursor
nnoremap <C-J> i<CR><ESC>

" better scrolling
" nnoremap <c-d> 10jzz
" nnoremap <c-u> 10kzz

"add matching brackets automatically
inoremap {} {}<left>
inoremap {<cr>  {<cr>}<cr><esc><up>O
inoremap {;<cr>  {<cr>});<esc>O
" inoremap () ()<left> this one was just not helpful
inoremap (<cr> (<cr>)<esc>O
inoremap (>  (  =>  )<esc>f(la
inoremap (><cr>  (  => {<cr><cr>})<esc>2kf(la
inoremap <? <?php
inoremap <?<space> <?<space>

" open file under corsor in new vertical split
nnoremap vgf <c-w>vgf


"nnoremap <c-f> <c-w>f <c-w>l
inoremap :w<cr> <esc>:w<cr>

"insert horizontal rule
nnoremap <leader>hr 80i<c-k>hh<esc>o
inoremap <leader>hr <esc>80i<c-k>hh<esc>o

" 'cd' towards the directory in which the current file is edited
" but only change the path for the current window
" https://vimways.org/2019/vim-and-the-working-directory/
nnoremap <silent> <leader>cd :lcd %:h<cr>

" swedish characters using leader key
"inoremap <leader>\a <c-k>aa
"inoremap <leader>a <c-k>a:
"inoremap <leader>o <c-k>o:
"inoremap <leader>\A <c-k>AA
"inoremap <leader>A <c-k>A:
"inoremap <leader>O <c-k>O:

nnoremap <leader>c :exe ':silent !'google chrome' %'<cr>

vnoremap <C-K> :move-2<CR>gv
vnoremap <C-J> :move+2<CR>gv

inoremap <leader>ok <c-k>OK
nnoremap <leader>ok i<c-k>OK <esc>

" key mappings end here

" macros
let @n = "kyf jp0a"  " numbered list with insert

"custom ex commands

ca plugins scriptnames

" :command run update | $-1read !node %
" :command run shell node % 
command Run update | term node % 
ca run Run

"on buffer in vertical split
ca vsb vert sb

:command VRC vsp $MYVIMRC
ca vrc VRC
ca erc e $MYVIMRC

:command MD !open %
ca md MD

" quit without saving
ca qq q!
command Q q!

" write a file with sudo having forgotten to use sudo to open the file
"there seems to be two versions of this. this one and one using a keymapping
:command Sudowrite w !sudo tee %
ca sudowrite Sudowrite
ca sw Sudowrite
"force write of a file when opened in read only mode (forgot sudo)
"there seems to be two versions of this. this one and one using a custom command
cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!

" open buffer in vertical split
ca vsb vertical sbuffer

" open file in vertical split
noremap vf :vertical wincmd f<cr>

" insert date
:iab <expr> dts strftime("%y-%m-%d")

" open terminal in horizontal split below all vertical splits
ca bterm bo term

" always open help in vertical split
cabbrev h vert h

" make it easier to open files in tabs
cabbrev t tabnew

" :cd %:h set working directory to path of current file
ca cdhere cd %:h
" :tcd %:p:h set working directory for this tab to path of current file
ca tcdhere tcd %:h
"----------------------------------------------------------------------------

autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
syntax on
autocmd! bufreadpost *.vim set syntax=off

"use html template when starting a new empty html file
"https://shapeshed.com/vim-templates/
if has("autocmd")
  augroup templates
    autocmd BufNewFile *.html 0r ~/.vim/templates/html5.html
  augroup END
endif

" change cursor shape based on mode
" insert mode

let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
let &t_SI.="\e[5 q"
let &t_SR.="\e[2 q"

" normal mode
let &t_EI.="\e[2 q"

" Ps = 0  -> blinking block.
" Ps = 1  -> blinking block (default).
" Ps = 2  -> steady block.
" Ps = 3  -> blinking underline.
" Ps = 4  -> steady underline.
" Ps = 5  -> blinking bar (xterm).
" Ps = 6  -> steady bar (xterm).

"netrw setup
let g:netrw_banner = 1
let g:netrw_liststyle = 3
let g:netrw_browse_split = 0
let g:netrw_altv = 1
let g:netrw_winsize = 25

" augroup ProjectDrawer open file explorer on Vim launch
"   autocmd!
"   autocmd VimEnter * :Vexplore
" augroup END

" Toggle Vexplore with Ctrl-T because I like Ctrl-E for moving down line by line
function! ToggleVExplorer()
  if exists("t:expl_buf_num")
      let expl_win_num = bufwinnr(t:expl_buf_num)
      if expl_win_num != -1
          let cur_win_nr = winnr()
          exec expl_win_num . 'wincmd w'
          close
          exec cur_win_nr . 'wincmd w'
          unlet t:expl_buf_num
      else
          unlet t:expl_buf_num
      endif
  else
      exec '1wincmd w'
      Vexplore
      let t:expl_buf_num = bufnr("%")
  endif
endfunction
map <silent> <C-T> :call ToggleVExplorer()<CR>

autocmd BufEnter * let &titlestring = ' ' . expand("%:t")
set title

" enter insert mode when opening a file
" autocmd BufNewFile * startinsert


" use leader+n to toggle the line number counting method
function! g:ToggleNuMode()
  if (!&relativenumber)
     set rnu
  else
		 set nornu
     "set nu
  endif
endfunction
nnoremap <silent><leader>n :call g:ToggleNuMode()<cr>

" use leader+L to toggle list mode
function! g:ToggleListMode()
if (!&list)
	 set list
else
	 set nolist
endif
endfunction
nnoremap <silent><leader>l :call g:ToggleListMode()<cr>

source ~/.vim/.vim_abbr
source ~/.vim/snippets.vim
"source ~/.vim/shell.vim

com! WP call WordProcessorMode()

" https://www.drbunsen.org/writing-in-vim/
func! WordProcessorMode()
	setlocal formatoptions=1ctnqro
	setlocal noexpandtab 
	nnoremap <buffer> j gj 
	nnoremap <buffer> k gk
	noremap <expr> j (v:count? 'j' : 'gj')
	noremap <expr> k (v:count? 'k' : 'gk')
	setlocal spell spelllang=en_us 
	set thesaurus+=/Users/sbrown/.vim/thesaurus/mthesaur.txt
	set complete+=s
	"set formatprg=par
	setlocal wrap
	setlocal linebreak
	setlocal comments=n:*,n:>,n:#,n:-
endfunction

com! WF call WorkflowyMode()

func! WorkflowyMode()
	setlocal formatoptions=1ctnqro
	setlocal noexpandtab
	nnoremap <buffer> j gj
	nnoremap <buffer> k gk
	setlocal spell spelllang=en_us
	set thesaurus+=/Users/sbrown/.vim/thesaurus/mthesaur.txt
	set complete+=s
	"set formatprg=par
	setlocal wrap
	setlocal linebreak
	setlocal comments=n:*,n:>,n:#,n:-
	setlocal suffixesadd=.wkf
	setlocal foldmethod=indent
endfunction

autocmd BufReadPost *.odt :%!odt2txt %

" restore folds when opeing a file
" augroup remember_folds
"   autocmd!
"   autocmd BufWinLeave * mkview
"   autocmd BufWinEnter * silent! loadview
" augroup END

com! Bullets call CommentsWithBullets()
nmap <silent> <leader>- :call CommentsWithBullets()<CR>

ca bullets Bullets
ca bul Bullets
ca History browse oldfiles
inoremap <leader>* ∙

func! CommentsWithBullets()
  setlocal formatoptions=1ctnqro
  setlocal comments=n:*,n:>,n:#,n:-,n:•,n:*
	echo 'Bullets on'
endfunction


" Session management
"from: https://dockyard.com/blog/2018/06/01/simple-vim-session-management-part-1
" and: https://dockyard.com/blog/2019/06/25/simple-vim-session-management-part-2
let g:session_dir = '~/.vim/sessions'
" ss = session save
exec 'nnoremap <Leader>ss :Obsession ' . g:session_dir . '/*.vim<C-D><BS><BS><BS><BS><BS>'
" sr = session resume
exec 'nnoremap <Leader>sr :so ' . g:session_dir . '/*.vim<C-D><BS><BS><BS><BS><BS>'
" sp = session pause
nnoremap <Leader>sp :Obsession<CR>
" sk = kill (delete) session
nnoremap <Leader>sk :Obsession!<CR>
" Save current session overriding existing saved session created using :mks
" using TPope's Obsession. saving this in case I want to go back
" ca svs mks!

autocmd InsertEnter * highlight CursorLine ctermfg=NONE ctermbg=NONE
autocmd InsertLeave * highlight CursorLine ctermfg=green ctermbg=darkblue

" now set it up to change the status line based on mode
  au InsertEnter * hi StatusLine term=reverse ctermfg=blue
  au InsertLeave * hi StatusLine term=reverse ctermbg=green

autocmd WinEnter * set number
	autocmd WinLeave * set nonumber


" Our custom TabLine function
function MyTabLine()
  let s = ''
  for i in range(tabpagenr('$'))
    " select the highlighting
    if i + 1 == tabpagenr()
      let s .= '%#TabLineSel#'
    else
      let s .= '%#TabLine#'
    endif

    " set the tab page number (for mouse clicks)
    let s .= '%' . (i + 1) . 'T'

    " the label is made by MyTabLabel()
    let s .= ' %{MyTabLabel(' . (i + 1) . ')} '
  endfor

  " after the last tab fill with TabLineFill and reset tab page nr
  let s .= '%#TabLineFill#%T'

    let s .= '%=' " Right-align after this

    if exists('g:this_obsession')
        let s .= '%#diffadd#' " Use the "DiffAdd" color if in a session
    endif

    " add vim-obsession status if available
    if exists(':Obsession')
        let s .= "%{ObsessionStatus()}"
        if exists('v:this_session') && v:this_session != ''
            let s:obsession_string = v:this_session
            let s:obsession_parts = split(s:obsession_string, '/')
            let s:obsession_filename = s:obsession_parts[-1]
            let s .= ' ' . s:obsession_filename . ' '
            let s .= '%*' " Restore default color
        endif
    endif

  return s
endfunction

" Required for MyTabLine()
function MyTabLabel(n)
  let buflist = tabpagebuflist(a:n)
  let winnr = tabpagewinnr(a:n)
  return bufname(buflist[winnr - 1])
endfunction

set shortmess-=S
set scroll=10
au VimEnter,VimResized,WinEnter * set scroll=10

