let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
argglobal
%argdel
$argadd www/learn/react/Ex_Files_Learning_React/Exercise\ Files/Ch01/01_02/start/hello-react
edit www/learn/react/Ex_Files_Learning_React/Exercise\ Files/Ch01/01_02/start/hello-react/src/index.js
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 44 + 41) / 82)
exe 'vert 2resize ' . ((&columns * 37 + 41) / 82)
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 16 - ((15 * winheight(0) + 21) / 42)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
16
normal! 08|
lcd ~/www/learn/react/Ex_Files_Learning_React/Exercise\ Files/Ch01/01_02/start/hello-react/src
wincmd w
argglobal
if bufexists("~/www/learn/react/Ex_Files_Learning_React/Exercise\ Files/Ch01/01_02/start/hello-react/public/index.html") | buffer ~/www/learn/react/Ex_Files_Learning_React/Exercise\ Files/Ch01/01_02/start/hello-react/public/index.html | else | edit ~/www/learn/react/Ex_Files_Learning_React/Exercise\ Files/Ch01/01_02/start/hello-react/public/index.html | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 4 - ((3 * winheight(0) + 21) / 42)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
4
normal! 0
lcd ~/www/learn/react/Ex_Files_Learning_React/Exercise\ Files/Ch01/01_02/start/hello-react/src
wincmd w
exe 'vert 1resize ' . ((&columns * 44 + 41) / 82)
exe 'vert 2resize ' . ((&columns * 37 + 41) / 82)
tabnext 1
badd +1 ~/www/learn/react/Ex_Files_Learning_React/Exercise\ Files/Ch01/01_02/start/hello-react/src/index.js
badd +1 ~/www/learn/react/Ex_Files_Learning_React/Exercise\ Files/Ch01/01_02/start/hello-react
badd +1 ~/www/learn/react/Ex_Files_Learning_React/Exercise\ Files/Ch01/01_02/start/hello-react/public/index.html
badd +1 ~/www/learn/react/Ex_Files_Learning_React/Exercise\ Files/Ch01/01_02/start/hello-react/package.json
badd +1 ~/www/learn/react/Ex_Files_Learning_React/Exercise\ Files/Ch01/01_02/start/hello-react/public/favicon.ico
badd +1 ~/www/learn/react/Ex_Files_Learning_React/Exercise\ Files/Ch01/01_02/start/hello-react/src
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
set winminheight=1 winminwidth=1
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
nohlsearch
let g:this_session = v:this_session
let g:this_obsession = v:this_session
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
