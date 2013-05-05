
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
" Key Maps
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" 查看所有按键的映射情况
"  :map
" 具体某个按键的映射，如查看F12映射哪个键
"  :map F12



" Set the value used for <leader> in mappings
let g:mapleader = ","

" 定义了一个映射(map)，这个映射把<leader>ss，映射为命令:source ~/.vimrc<cr>。
" 当定义一个映射时，可以使用<leader>前缀。而在映射生效时，vim会把<leader>替换成mapleader变量的值。
" 也就是说，我们这里定义的<leader>ss在使用时就变成了”,ss“，
" 当输入这一快捷方式时，就会source一次~/.vimrc文件(也就是重新执行一遍.vimrc文件)。
" Fast reloading of the .vimrc
map <silent> <leader>ss :source ~/.vimrc<cr>

" Fast editing of .vimrc
" 定义了<leader>ee快捷键，当输入,ee时，会打开~/.vimrc进行编辑。
map <silent> <leader>ee :e ~/.vimrc<cr>

"When .vimrc is edited, reload it
"定义了一个自动命令，每次写入.vimrc后，都会执行这个自动命令，source一次~/.vimrc文件
autocmd! BufWritePost .vimrc source ~/.vimrc

" 新建一个tab
nnoremap <leader>t : tabnew<CR>

" The escape key is a long ways away. This maps it to the sequence 'jj'
" 在插入和命令行映射下映射jj为<esc>
:map! jj <esc>

" Similarly, : takes two keystrokes, ; takes one; map the latter to the former
" in normal mode to get to the commandline faster
nnoremap ; :

" This will disable the arrow keys while you’re in normal mode to help you learn to
" use hjkl. Trust me, you want to learn to use hjkl. Playing a lot of Nethack also helps.

" It also disables the arrow keys in insert mode to force you to get back into normal
" mode the instant you’re done inserting text, which is the “right way” to do things.

" It also makes j and k work the way you expect instead of working in some archaic
" movement by file line instead of screen line" fashion.
nnoremap <up> <nop>
noremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>

inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

"快速删除到行末和行首
nnoremap dh d0
nnoremap dl d$

" Turn on "very magic" regex status by default for searches.
" :he /magic for more information
" fix Vim’s horribly broken default regex “handling” by
" automatically inserting a \v before any string you search for. This turns off
" Vim’s crazy default regex characters and makes searches use normal regexes. I
" already know Perl/Python compatible regex formatting, why would I want to
" learn another scheme?
"nnoremap / /\v
"vnoremap / /\v

" save changes
map <Leader>s :w<CR>
" exit vim without saving any changes
map <Leader>q :q!<CR>
" exit vim saving changes
map <Leader>w :x<CR>


" Split window management
" open a new vertical split and switch over to it.
nnoremap <leader>w <C-w>v<C-w>l
" open a new horizontal split but not switch over to it.
nnoremap <leader>W <C-w>s

" use <ctrl> plus direction key to move around within windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"从vim复制内容的时候，经常做set nonu 和set nu的操作，比较麻烦。F3快速设置显示和
"隐藏行号
" Toggle line numbers
nmap <silent> <F3> :set number!<CR>
"往vim粘贴代码的时候，为了避免代码格式混乱，经常要先执行:set paste命令, 使用F4
"一键搞定。
" Toggle paste
set pastetoggle=<F4>

" page down with <Space>
"nmap <space> <pagedown>

" Easier to type, and I never use the default behavior.
"H到行首,L到行末
noremap H ^
noremap L $

" I found it useful to have movement in the insert mode, like Emacs.
" Keybindings for movement in insert mode, I use the emace line mode.
imap <C-a> <Esc>I
imap <C-e> <Esc>A

" Emacs bindings in command line mode
cnoremap <c-a> <home>
cnoremap <c-e> <end>

" visual shifting (does not exit Visual mode)
vnoremap < <gv
vnoremap > >gv

nnoremap gf <c-w>gf " open file in a new tab
map <F8> :NERDTreeToggle<CR>
map <F6> :TlistToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Plugins Setting
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""
"Power line
""""""""""""
"conf for plugins {{ 插件相关的配置
"状态栏的配置
"powerline{
"set guifont=PowerlineSymbols\ for\ Powerline
"set t_Co=256
"let g:Powerline_symbols = 'fancy'
"}

"""""""""
"pathogen
"""""""""
"pathogen是Vim用来管理插件的插件
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


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" User defined command
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
command W w !sudo tee % > /dev/null

" "sudo" save:
":cmap w!! w !sudo tee % >/dev/null


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


" Remove trailing whitespace when writing a buffer, but not for diff files.
" From: Vigil
" @see http://blog.bs2.to/post/EdwardLee/17961
function RemoveTrailingWhitespace()
    if &ft != "diff"
        let b:curcol = col(".")
        let b:curline = line(".")
        silent! %s/\s\+$//
        silent! %s/\(\s*\n\)\+\%$//
        call cursor(b:curline, b:curcol)
    endif
endfunction
"autocmd BufWritePre * call RemoveTrailingWhitespace()
"写入文件安前，去除bash,python脚本的空白
autocmd BufWritePre *.py call RemoveTrailingWhitespace()
autocmd BufWritePre *.sh call RemoveTrailingWhitespace()

syn on                      "语法支持

"快速执行脚本,可以添加更多的脚本类型
function! RunScript()
    if &ft == "sh"
        :w|!bash %
    elseif &ft == "python"
        :w|!python %
    elseif &ft == "php"
        :w|!php %
    else
        echo "Unsupport script type: ".&ft.", please add below lines to RunScript()"
        echo "\telseif &ft == ".&ft
        echo "\t:w|run_command % \"Please replace run_command as your own need"
    endif
endfunction
"普通模式下使用F2键快速执行bash, python, php脚本，但是目前不支持向脚本参数传递
nmap <F2> :call RunScript()<CR>
"php 脚本语法检查
map <F8> :!php -l %<CR>
"设置使用K查看PHP帮助文档
set runtimepath+=$HOME/.vim/php/
autocmd BufNewFile,Bufread *.module,*.inc,*.php set keywordprg="help"

map Q gq
" "Q" 命令会启动Ex模式， 让不使用Ex模式


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"           Unkown Options
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
