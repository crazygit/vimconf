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
call pathogen#infect()
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()


""""""""""""""""""""""""""""""
" => bufExplorer plugin
""""""""""""""""""""""""""""""""
let g:bufExplorerDefaultHelp=0
let g:bufExplorerShowRelativePath=1
let g:bufExplorerFindActive=1
let g:bufExplorerSortBy='name'
map <leader>o :BufExplorer<cr>

""""""""""
" Yankring
""""""""""
let g:yankring_history_dir = '~/.vim/temp/'
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


"""""""""""""""""""""""""""""""
" => MRU plugin
""""""""""""""""""""""""""""""
let MRU_Max_Entries = 400
map <leader>f :MRU<CR>

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


""""""""""""""""""""""""""""""
" => ZenCoding
""""""""""""""""""""""""""""""
" Enable all functions in all modes
let g:user_zen_mode='a'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark
map <leader>nf :NERDTreeFind<cr>

