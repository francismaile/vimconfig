let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/www/portfolio/parallax
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
argglobal
%argdel
$argadd index.html
edit ~/www/portfolio/formpage/index.html
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd w
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 58 + 88) / 176)
exe 'vert 2resize ' . ((&columns * 58 + 88) / 176)
exe 'vert 3resize ' . ((&columns * 58 + 88) / 176)
argglobal
balt ~/www/portfolio/formpage/style.css
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 21 - ((20 * winheight(0) + 21) / 42)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 21
normal! 04|
lcd ~/www/portfolio/formpage
wincmd w
argglobal
if bufexists("~/www/portfolio/formpage/form-processor.js") | buffer ~/www/portfolio/formpage/form-processor.js | else | edit ~/www/portfolio/formpage/form-processor.js | endif
balt ~/www/portfolio/formpage/index.html
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 3 - ((2 * winheight(0) + 21) / 42)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 3
normal! 02|
lcd ~/www/portfolio/formpage
wincmd w
argglobal
if bufexists("~/www/portfolio/formpage/style.css") | buffer ~/www/portfolio/formpage/style.css | else | edit ~/www/portfolio/formpage/style.css | endif
balt ~/www/portfolio/formpage/index.html
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let &fdl = &fdl
let s:l = 5 - ((4 * winheight(0) + 21) / 42)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 5
let s:c = 94 - ((19 * winwidth(0) + 29) / 58)
if s:c > 0
  exe 'normal! ' . s:c . '|zs' . 94 . '|'
else
  normal! 094|
endif
lcd ~/www/portfolio/formpage
wincmd w
exe 'vert 1resize ' . ((&columns * 58 + 88) / 176)
exe 'vert 2resize ' . ((&columns * 58 + 88) / 176)
exe 'vert 3resize ' . ((&columns * 58 + 88) / 176)
tabnext 1
badd +1 ~/www/portfolio/formpage/index.html
badd +11 ~/www/portfolio/parallax/index.html
badd +1 ~/www/portfolio/formpage/style.css
badd +1 ~/www/portfolio/formpage/form-processor.js
badd +73 ~/www/portfolio/archive/survey-fcc/index.html
badd +56 ~/www/portfolio/formpage/userstories.txt
badd +1 ~/www/javascript/arrayPlay.js
badd +1 ~/www/portfolio/archive/survey-fcc/form.html
badd +1 ~/www/portfolio/formpage/form.html
badd +8 ~/www/portfolio/resources/parallax/index.html
badd +41 ~/www/portfolio/resources/parallax/css/style.css
badd +1 ~/www/portfolio/resources/parallax
badd +26 ~/www/portfolio/parallax/img/image-credits.html
badd +1 ~/www/portfolio/resources/parallax-examples/6-practical-examples-parallax/links.txt
badd +1 ~/www/portfolio/parallax
badd +19 ~/www/portfolio/index.html
badd +1 tribute/
badd +12 ~/www/portfolio/tribute/index.html
badd +106 ~/www/portfolio/landing/index.html
badd +178 ~/www/portfolio/landing/style.css
badd +50 ~/www/portfolio/tribute/css/style.css
badd +34 ~/www/portfolio/tribute/podcasts.html
badd +1 ~/www/portfolio/formpage/enew
badd +1 ~/www/learn/javascript/querystr2objectarr.js
badd +5 ~/www/portfolio/archive/survey-fcc/browser-sync.js
badd +19 ~/www/portfolio/formpage/reform.html
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let &winminheight = s:save_winminheight
let &winminwidth = s:save_winminwidth
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
nohlsearch
let g:this_session = v:this_session
let g:this_obsession = v:this_session
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
