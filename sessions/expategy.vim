let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Projects/Websites/Expategy
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
argglobal
%argdel
$argadd fluentu-links.txt
$argadd ideas.txt
$argadd newsletter-subjects.txt
$argadd problems.txt
$argadd thinking.txt
set stal=2
tabnew
tabrewind
edit thinking.txt
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
4wincmd h
wincmd w
wincmd w
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
exe 'vert 1resize ' . ((&columns * 34 + 88) / 176)
exe 'vert 2resize ' . ((&columns * 35 + 88) / 176)
exe 'vert 3resize ' . ((&columns * 34 + 88) / 176)
exe 'vert 4resize ' . ((&columns * 35 + 88) / 176)
exe 'vert 5resize ' . ((&columns * 34 + 88) / 176)
argglobal
5argu
balt ToDo.txt
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
let s:l = 18 - ((7 * winheight(0) + 20) / 41)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 18
normal! 09|
wincmd w
argglobal
5argu
if bufexists("ToDo.txt") | buffer ToDo.txt | else | edit ToDo.txt | endif
balt thinking.txt
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
let s:l = 11 - ((10 * winheight(0) + 20) / 41)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 11
normal! 0
wincmd w
argglobal
2argu
balt fluentu-links.txt
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
let s:l = 15 - ((14 * winheight(0) + 20) / 41)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 15
normal! 0
wincmd w
argglobal
3argu
balt fluentu-links.txt
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
let s:l = 24 - ((5 * winheight(0) + 20) / 41)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 24
normal! 017|
wincmd w
argglobal
4argu
balt fluentu-links.txt
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
let s:l = 1 - ((0 * winheight(0) + 20) / 41)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
wincmd w
3wincmd w
exe 'vert 1resize ' . ((&columns * 34 + 88) / 176)
exe 'vert 2resize ' . ((&columns * 35 + 88) / 176)
exe 'vert 3resize ' . ((&columns * 34 + 88) / 176)
exe 'vert 4resize ' . ((&columns * 35 + 88) / 176)
exe 'vert 5resize ' . ((&columns * 34 + 88) / 176)
tabnext
edit newsletter/first-issue.txt
argglobal
5argu
if bufexists("newsletter/first-issue.txt") | buffer newsletter/first-issue.txt | else | edit newsletter/first-issue.txt | endif
balt first-issue.txt
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
let s:l = 1 - ((0 * winheight(0) + 20) / 41)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
lcd ~/Projects/Websites/Expategy/newsletter
tabnext 1
set stal=1
badd +1 ~/Projects/Websites/Expategy/fluentu-links.txt
badd +1 ~/Projects/Websites/Expategy/ideas.txt
badd +1 ~/Projects/Websites/Expategy/newsletter-subjects.txt
badd +1 ~/Projects/Websites/Expategy/problems.txt
badd +1 ~/Projects/Websites/Expategy/thinking.txt
badd +1 ~/Projects/Websites/Expategy/newsletter/first-issue.txt
badd +1 ~/Projects/Websites/Expategy/ToDo.txt
badd +1 ~/Projects/Websites/Expategy/first-issue.txt
badd +1 ~/Projects/Websites/Expategy
badd +1 ~/Projects/Websites/Expategy/newsletter
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
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
