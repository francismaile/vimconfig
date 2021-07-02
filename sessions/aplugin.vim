let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/www/wordpress/wp-content/plugins/aplugin
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
argglobal
%argdel
$argadd aplugin.php
set stal=2
tabnew
tabrewind
edit aplugin.php
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
3wincmd h
wincmd w
wincmd w
wincmd w
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 52 + 101) / 202)
exe 'vert 2resize ' . ((&columns * 48 + 101) / 202)
exe 'vert 3resize ' . ((&columns * 50 + 101) / 202)
exe 'vert 4resize ' . ((&columns * 49 + 101) / 202)
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
let s:l = 40 - ((27 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
40
normal! 04|
lcd ~/www/wordpress/wp-content/plugins/aplugin/admin
wincmd w
argglobal
if bufexists("~/www/wordpress/wp-content/plugins/aplugin/admin/admin-menu.php") | buffer ~/www/wordpress/wp-content/plugins/aplugin/admin/admin-menu.php | else | edit ~/www/wordpress/wp-content/plugins/aplugin/admin/admin-menu.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
33,58fold
33,58fold
33,59fold
61,81fold
61,82fold
33,84fold
33
normal! zo
33
normal! zo
33
normal! zo
61
normal! zo
let s:l = 33 - ((32 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
33
normal! 0
lcd ~/www/wordpress/wp-content/plugins/aplugin/admin
wincmd w
argglobal
if bufexists("~/www/wordpress/wp-content/plugins/aplugin/admin/settings-register.php") | buffer ~/www/wordpress/wp-content/plugins/aplugin/admin/settings-register.php | else | edit ~/www/wordpress/wp-content/plugins/aplugin/admin/settings-register.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
10,37fold
10
normal! zo
let s:l = 39 - ((35 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
39
normal! 0
lcd ~/www/wordpress/wp-content/plugins/aplugin/admin
wincmd w
argglobal
if bufexists("~/www/wordpress/wp-content/plugins/aplugin/admin/settings-pages.php") | buffer ~/www/wordpress/wp-content/plugins/aplugin/admin/settings-pages.php | else | edit ~/www/wordpress/wp-content/plugins/aplugin/admin/settings-pages.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 25 - ((24 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
25
normal! 025|
lcd ~/www/wordpress/wp-content/plugins/aplugin/admin
wincmd w
exe 'vert 1resize ' . ((&columns * 52 + 101) / 202)
exe 'vert 2resize ' . ((&columns * 48 + 101) / 202)
exe 'vert 3resize ' . ((&columns * 50 + 101) / 202)
exe 'vert 4resize ' . ((&columns * 49 + 101) / 202)
tabnext
edit ~/www/wordpress/wp-content/plugins/ExFiles/03-03/01-code-register-settings.txt
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
exe 'vert 1resize ' . ((&columns * 100 + 101) / 202)
exe 'vert 2resize ' . ((&columns * 101 + 101) / 202)
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
let s:l = 1 - ((0 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 027|
lcd ~/www/wordpress/wp-content/plugins/ExFiles/03-03
wincmd w
argglobal
if bufexists("~/www/wordpress/wp-content/plugins/ExFiles/03-03/02-code-validate-settings.txt") | buffer ~/www/wordpress/wp-content/plugins/ExFiles/03-03/02-code-validate-settings.txt | else | edit ~/www/wordpress/wp-content/plugins/ExFiles/03-03/02-code-validate-settings.txt | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 10 - ((9 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
10
normal! 0
lcd ~/www/wordpress/wp-content/plugins/ExFiles/03-03
wincmd w
exe 'vert 1resize ' . ((&columns * 100 + 101) / 202)
exe 'vert 2resize ' . ((&columns * 101 + 101) / 202)
tabnext 1
set stal=1
badd +40 ~/www/wordpress/wp-content/plugins/aplugin/aplugin.php
badd +17 ~/www/wordpress/wp-content/plugins/ExFiles/03-03/01-code-register-settings.txt
badd +1 ~/www/wordpress/wp-content/plugins/aplugin/admin/admin-menu.php
badd +1 ~/www/wordpress/wp-content/plugins/aplugin/admin/settings-register.php
badd +36 ~/www/wordpress/wp-content/plugins/aplugin/admin/settings-pages.php
badd +10 ~/www/wordpress/wp-content/plugins/ExFiles/03-03/02-code-validate-settings.txt
badd +28 ~/www/wordpress/wp-content/plugins/ExFiles/03-07/myplugin/myplugin.php
badd +9 ~/www/wordpress/wp-content/plugins/aplugin/admin/settings-callbacks.php
badd +1 ~/www/wordpress/wp-content/plugins/ExFiles/03-02/01-code-display-settings.txt
badd +1 ~/www/wordpress/wp-content/plugins/ExFiles/03-02/03-code-add-sublevel-menu.txt
badd +1 ~/www/wordpress/wp-content/plugins/ExFiles/03-03/myplugin/admin/admin-menu.php
badd +21 ~/www/wordpress/wp-content/plugins/aplugin/admin/a-admin-menu.php
badd +1 ~/www/wordpress/wp-content/plugins/aplugin/admin/settings-page.php
badd +1 ~/www/wordpress/wp-content/plugins/aplugin/admin/a-settings-page.php
badd +42 ~/www/wordpress/wp-content/plugins/myplugin/myplugin.php
badd +1 ~/www/wordpress/wp-content/plugins/ExFiles/03-03/04
badd +1 ~/www/wordpress/wp-content/plugins/aplugin/temp
badd +1 ~/www/wordpress/wp-content/plugins/aplugin
badd +44 ~/www/wordpress/wp-content/plugins/myplugin/admin/settings-register.php
badd +1 ~/www/wordpress/wp-content/plugins/ExFiles/02-04/activate-deactivate.php
badd +1 ~/www/wordpress/wp-content/plugins/ExFiles/03-02/02-code-add-toplevel-menu.txt
badd +1 ~/www/wordpress/wp-content/plugins/ExFiles/03-02
badd +1 ~/www/wordpress/wp-content/plugins/ExFiles/03-03
badd +23 ~/www/wordpress/wp-content/plugins/ExFiles/03-03/03-code-add-settings-section.txt
badd +91 ~/www/wordpress/wp-content/plugins/aplugin/admin/admin-menu.php.html
badd +1 ~/www/wordpress/wp-content/plugins/ExFiles/03-07/myplugin
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
