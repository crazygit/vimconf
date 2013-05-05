
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"   Maintainer:
"           Crazygit
"
"   Contacts Me:
"           Sina Weibo: lianglin999
"
"   Last Modify:
"           Fri Apr 12 23:42:17 CST 2013
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Plugins Setting
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""
" pathogen
"""""""""""
" pathogen是Vim用来管理插件的插件
" Call "filetype off" first to ensure that bundle ftplugins can be added to the
" path before we re-enable it later in the vimrc.
:filetype off
call pathogen#infect()
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

""""""""""
" Yankring
""""""""""
nnoremap <silent> <F5> :YRShow<cr>
inoremap <silent> <F5> <ESC>:YRShow<cr>

"""""""""
" matchit
"""""""""
map <tab> %
let b:match_ignorecase = 1

""""""""""""""""
" File Explorer
""""""""""""""""
let g:explVertical=1 " should I split verticially
let g:explWinSize=35 " width of 35 pixels

""""""""""""""""""""
" CTags and Taglist
""""""""""""""""""""
let Tlist_Ctags_Cmd = "/usr/bin/ctags" " Location of my ctags
let Tlist_Sort_Type = "name" " order by
let Tlist_Use_Right_Window = 0 " split to the left side of the screen
let Tlist_Compart_Format = 1 " show small meny
let Tlist_Exist_OnlyWindow = 1 " if you are the last, kill yourself
let Tlist_File_Fold_Auto_Close = 0 " Do not close tags for other files
let Tlist_Enable_Fold_Column = 0 " Do not show folding tree

" which tags files CTRL-] will search
set tags=/data/src/tags/cocktail-bp.tags
" auto change the current dierctory when you open the file or window
" or any other buffer  Vim64不支持
"set autochdir
set makeef=makeerror.err

"""""""""""
" Minibuf
"""""""""""
" make tabs show complete (no broken on two lines)
let g:miniBufExplTabWrap = 1
let g:miniBufExplModSelTarget = 1

"""""""""""""
" syntastic
"""""""""""""
if has('statusline')
  set laststatus=2
  " Broken down into easily includeable segments
  set statusline=%<%f\    " Filename
  set statusline+=%w%h%m%r " Options
  set statusline+=%{fugitive#statusline()} "  Git Hotness
  set statusline+=\ [%{&ff}/%Y]            " filetype
  set statusline+=\ [%{getcwd()}]          " current dir
  set statusline+=%#warningmsg#
  set statusline+=%{SyntasticStatuslineFlag()}
  set statusline+=%*
  let g:syntastic_enable_signs=1
  set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info
endif

"""""""""""
" flake8
"""""""""""
"写了python文件后，调用flake8检查文件
let g:pyflakes_use_quickfix = 0
let g:flake8_ignore="E501"
autocmd BufWritePost *.py call Flake8()


"""""""""""""""""
" Autocommands
"""""""""""""""""
" ensure every file does syntax highlighting (full)
autocmd BufEnter * :syntax sync fromstart
"autocmd GUIEnter * :simalt ~x -- " having it auto maximize the screen

"""""""""""""""""""""""""""""""
" Auto-Complete:
" 1. Templates
" 2. Abbreviations
"    usage:
"    iabbrev name payload
"    cabbrev name othername
" 3. Insert-mode auto-complete
""""""""""""""""""""""""""""""""
" set for template
function! LoadTemplate()
	silent! 0r ~/.vim/skel/tmpl.%:e
	" highlight	%VAR% placeholders with the Todo colour group
	syn match Todo "%\u\+%" containedIn=ALL
endfunction
autocmd! BufNewFile * call LoadTemplate()
" jump between %VAR% placeholders in Normal mode with <Ctrl-p>
"nnoremap <c-p> /%\u.\{-1,}%<cr>c/%/e<cr>
" jump between %VAR% placeholders in Insert mode with <Ctrl-p>
"inoremap <c-p> <ESC>/%\u.{-1,}%<cr>c/%/e<cr>

" set for abbreviations
"iab xasp <%@language=jscript%><CR><%<CR><TAB><CR><BS>%><ESC><<O<TAB>
iab xdate <c-r>=strftime("%Y%m%d %H:%M:%S")<ESC><ESC>
" abbreviate commands
" cabbr docs help
" write a ~/.vim/abbreviations file
" source ~/.vim/abbreviations

" set for Insert-mode auto-complete
let g:pydiction_location = "~/.vim/bundle/Pydiction/complete-dict"
let g:pydiction_menu_height = 20

" PHP
let g:syntastic_phpcs_conf='--standard=DrupalCodingStandard --extensions=php,module,inc,install,test,profile,theme'
"let g:syntastic_phpcs_disable=1

" C make
set makeprg=make\ %<
set errorformat=%f:%l:\ %m


