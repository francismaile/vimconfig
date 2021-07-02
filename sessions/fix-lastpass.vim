let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/www/wordpress/wp-content/plugins/fix-lastpass
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
argglobal
%argdel
$argadd readme.md
$argadd fix-lastpass/readme.txt
edit readme.md
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd w
wincmd w
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 58 + 88) / 176)
exe 'vert 2resize ' . ((&columns * 58 + 88) / 176)
exe 'vert 3resize ' . ((&columns * 58 + 88) / 176)
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
let s:l = 31 - ((30 * winheight(0) + 21) / 42)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
31
normal! 023|
lcd ~/www/wordpress/wp-content/plugins/fix-lastpass
wincmd w
argglobal
2argu
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 8 - ((7 * winheight(0) + 21) / 42)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
8
normal! 0
lcd ~/www/wordpress/wp-content/plugins/fix-lastpass/fix-lastpass
wincmd w
argglobal
2argu
if bufexists("~/www/wordpress/wp-content/plugins/fix-lastpass/fix-lastpass/fix-lastpass.php") | buffer ~/www/wordpress/wp-content/plugins/fix-lastpass/fix-lastpass/fix-lastpass.php | else | edit ~/www/wordpress/wp-content/plugins/fix-lastpass/fix-lastpass/fix-lastpass.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 13 - ((12 * winheight(0) + 21) / 42)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
13
normal! 0
lcd ~/www/wordpress/wp-content/plugins/fix-lastpass/fix-lastpass
wincmd w
3wincmd w
exe 'vert 1resize ' . ((&columns * 58 + 88) / 176)
exe 'vert 2resize ' . ((&columns * 58 + 88) / 176)
exe 'vert 3resize ' . ((&columns * 58 + 88) / 176)
tabnext 1
badd +1 ~/www/wordpress/wp-content/plugins/fix-lastpass/readme.md
badd +0 ~/www/wordpress/wp-content/plugins/fix-lastpass/fix-lastpass/readme.txt
badd +1 ~/www/wordpress/wp-content/plugins/fix-lastpass/resources/tags.txt
badd +0 ~/www/wordpress/wp-content/plugins/fix-lastpass/fix-lastpass/fix-lastpass.php
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
let g:this_session = v:this_session
let g:this_obsession = v:this_session
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
