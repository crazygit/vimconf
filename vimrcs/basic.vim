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
" General settings
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 关闭与vi的兼容
set nocompatible

" 加载插件
filetype plugin on

" 支持缩进
filetype indent on

" 选择夜晚主题
colorscheme evening

" 设置背景为黑色
set background=dark

" 高显亮,这个要在colorscheme, background之后设置，不然选择的颜色主题就没有用
syntax on

" 注明在插入模式下哪里允许退格键<BS>删除光标前的字符。逗号分隔的三个值分别是指:
" 行首的空白字符， 换行符和插入模式开始处之前的字符
set backspace=indent,eol,start

" 告诉vim当覆盖一个文件的时候保留一个备份，但vms系统除外，因为vms系统会自动产生
" 备份文件，备份文件的名称是在原来的文件名上加上"~"字符
"if has("vms")
"    set nobackup
"else
"    set backup
"endif

" 保存50个命令和50个查找模式的命令
set history=50

" 总在vim的右下角显示当前光标的位置
set ruler

" 在右下角显示未完成的命令
set showcmd

" 当文件在外部被修改时，自动读取文件
set autoread

" 高显亮搜索结果
set hlsearch

"在输入部分查找模式时显示相应的匹配点
set incsearch

" 搜索的时候忽略大小写
set ignorecase

" 搜索的时候智能大小
set smartcase

" 当你移动到那些不能显示的文字上,Vim 会自动向右滚动让你看到后面的文字,要一次滚动十个字符
set sidescroll=10

" 很多命令只能在一行中移动。你可以通过 ’whichwrap’ 选项改变它
" 当光标处于行首时用 <BS> 键可以回到前一行的结尾;当处于行尾时用 <Space>
" 键可以移动到下一行的行首.
set whichwrap=b,s

set listchars=tab:\|\ ,trail:.,extends:>,precedes:<,eol:$

" ’iskeyword’ 选项指定哪些字母可以出现在一个单词中
" "@" 表示所有字母。"48-57" 表示 ASCII 字符 48-57 ,即数字 0 到 9。"192-255" 是
" 可显示的拉丁字符
set iskeyword+=-

" 设定显示命令行所用的行数
set cmdheight=2

" 显示行号
set number

" 不产生备份文件
set nobackup

" 让vim产生备份文件
"set backup

" 默认情况备份文件名是在原始文件名后面加上~, 修改后缀名为bak
" set backupext=.bak

" 默认情况是与原始文件的路径一致, 设置备份文件的路径
" set backupdir=~/.vim/tmp/backup/

" 编辑文件时,先将原始文件拷贝一份到filename.orig作为备份
" set patchmode=.orig

" 当vim进行编辑时，如果命令错误，会发出一个响声，该设置去掉响声
set vb t_vb=

" 插入括号时，短暂地跳转到匹配的对应括号
set showmatch

" 总是显示状态行
set laststatus=2

" 以下三个配置配合使用，设置tab和缩进空格数
set expandtab
set shiftwidth=4
set tabstop=4

" 执行编辑操作，如插入 <Tab> 或者使用 <BS> 时，把 <Tab> 算作空格的数目
set softtabstop=4

" 缩进取整到 'shiftwidth' 的倍数。应用于 > 和 < 命令。插入模式里的
set shiftround

" Tab in front of line uses shiftwidth - good for coding
set smarttab

" 为光标所在行加下划线
"set cursorline

"帮助系统设置为中文
set helplang=cn

"当前窗口的折叠方式: 语法高亮项目指定折叠
set foldmethod=syntax

" 设置自动和自动缩进
set autoindent  smartindent

" Go back to the position the cursor was on the last time this file was edited
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")|execute("normal `\"")|endif

" Show mode I'm in
set showmode

" 当一行长于78个字符的时候自动换行
autocmd FileType text setlocal textwidth=78

" 设置每行78个字符，超过的自动显示成多行
set wrap
set textwidth=78
set linebreak
"set showbreak=↪
set formatoptions=qrn1

" 一行超过85个字符显示错误信息
"if exists('+colorcolumn')
"    set colorcolumn=85
"else
"    au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>85v.\+', -1)
"endif

" vim默认自动对长行进行回绕,此处禁止回绕,即长的行不自动显示成几行
" 下面与上面的设置两者选一
"set nowrap

" 显示不可见的字符
"set list

" 设置当执行set list命令的时候一些不可见的字符怎么显示
set listchars=tab:\|\ ,trail:.,extends:>,precedes:<,eol:$ " what to show when I hit :set list

" 光标上下两侧最少保留的屏幕行数。这使你工作时总有一些可见的上下文。
" 如果你设置此选项为很大的值 (比如 999)，光标所在的行将总定位在窗口的中
" 间位置 (除非你非常靠近文件开始或者结束的地方，或者有长行回绕)
set scrolloff=999





" Turn on modelines
set modeline            " Scan for modeline commands
set modelines=4         " Scan 4 lines for modelines

" generate tags file for your system libraries, and ask your vim to load them
set tags+=/usr/local/include/tags
set tags+=/usr/include/tags

" Search for the tags file upward.  Cool! see :help file-searching
set tags+=tags;/

set ttyfast             " assume a fast terminal connection

" Ignore certain types of files on completion
set wildignore+=*.o,*.obj,*.pyc,.git

" Remember things between sessions
"
" '20  - remember marks for 20 previous files
" \"50 - save 50 lines for each register
" :20  - remember 20 items in command-line history
" %    - remember the buffer list (if vim started without a file arg)
" n    - set name of viminfo file
set viminfo='20,\"50,:20,%,n~/.viminfo

" Use menu to show command-line completion (in 'full' case)
set wildmenu

" Set command-line completion mode:
"   - on first <Tab>, when more than one match, list all matches and complete
"     the longest common  string
"   - on second <Tab>, complete the next full match and show menu
set wildmode=list:longest,full

set winminheight=0      " Allow windows to get fully squashed
set winminwidth=0       " Allow windows to get fully squashed

" "Hidden" buffers -- i.e., don't require saving before editing another file.
" Calling quit will prompt you to save unsaved buffers anyways.
set hidden

" Code Folding, everything folded by default
set foldmethod=indent

" Allow better terminal/mouse integration
"set mousemodel=extend

" Generic highlight changes
"highlight Comment cterm=none ctermfg=Gray
highlight IncSearch cterm=none ctermfg=Black ctermbg=DarkYellow
highlight Search cterm=none ctermfg=Black ctermbg=DarkYellow
"highlight String cterm=none ctermfg=DarkGreen
highlight treeDir cterm=none ctermfg=Cyan
highlight treeUp cterm=none ctermfg=DarkYellow
highlight treeCWD cterm=none ctermfg=DarkYellow
highlight netrwDir cterm=none ctermfg=Cyan

"
" Per http://vim.sourceforge.net/tips/tip.php?tip_id=330
" this will stop the annoying html indentation.
" xmledit does some things for us, and combined with autoindent that's
" probably enough.
"
autocmd BufEnter *.erb,*.haml,*.htm,*.html,*.kid,*.php,*.rhtml,*.xml,*.xsd setlocal indentexpr= autoindent shiftwidth=2

set encoding=utf-8 " default set with the shell $LANG variable
set fileencodings=utf-8,gb18030,gbk,gb2312,cp936,ucs-bom
set termencoding=utf-8
set history=100 " How many lines of history to remember
set ffs=unix ",dos,mac " support all three, in this order
set viminfo+=! " make sure it can save viminfo
" none of these should be word dividers, so make them not be
set isk+=_,$,@,%,#,-

""""""""""""""""""""""
" Search
" :cn :cN
""""""""""""""""""""""
set grepprg=ack-grep
set grepformat=%f:%l%m
""""""""""""""""""""""
" Files/Backups
""""""""""""""""""""""
set nobackup " make backup file
set makeef=error.err " When using make, where should it dump the file

"""""""""""""""""""""
" Spell check
"""""""""""""""""""""
"setlocal spell spelllang=en_us

"""""""""""""""""""""
" Vim UI
""""""""""""""""""""
"set numberwidth=4 " minimum width to use for the number column,not a fix size Vim64不支持
set hid " you can change buffer without saving
set whichwrap+=<,>,h,l  " backspace and cursor keys wrap to
"set mouse=a " use mouse everywhere
set shortmess=atI " shortens messages to avoid 'press a key' prompt
set report=0 " tell us when anything is changed via :...
set lz " do not redraw while running macros (much faster) (LazyRedraw)
" make the splitters between windows be blank
set fillchars=vert:\ ,stl:\ ,stlnc:\
"set lsp=0 " space it out a little more (easier to read)

""""""""""""""""""""
" Visual Cues
""""""""""""""""""""
set hlsearch " do highlight searched for phrases
set nowrapscan "
set so=15 " Keep 10 lines (top/bottom) for scope
set novisualbell " don't blink
set noerrorbells " no noises

""""""""""""""""""""""""
" Text Formatting/Layout
""""""""""""""""""""""""
set formatoptions+=mM " for charactors fold and patch
set si " smartindent
set cindent " do c-style indenting
"set noexpandtab " real tabs please!
set nowrap " not wrap lines
" opening the file name beneath the cursor
set path+=.,/usr/include/*,

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Folding
" Enable folding, but by default make it act like folding is off,
" because folding is annoying in anything but a few rare cases
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set foldenable " Turn on folding
" zc close the current fold
" zo open the current fold
" zM close all flods
" zR open all folds
" zj move to the next fold
" zk move to the previous fold
" zn disable folding
" zN re-enable folding
" set foldcolumn=10
set foldlevel=100 " Don't autofold anything (but I can still fold manually)
set foldopen-=search " don't open folds when you search into them
set foldopen-=undo " don't open folds when you undo stuff


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Key Maps
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Set the value used for <leader> in mappings
let g:mapleader = ","

"Fast reloading of the .vimrc
"定义了一个映射(map)，这个映射把<leader>ss，映射为命令:source ~/.vimrc<cr>。
"当定义一个映射时，可以使用<leader>前缀。而在映射生效时，vim会把<leader>替换成mapleader变量的值。
"也就是说，我们这里定义的<leader>ss在使用时就变成了”,ss“，
"当输入这一快捷方式时，就会source一次~/.vimrc文件(也就是重新执行一遍.vimrc文件)。
map <silent> <leader>ss :source ~/.vimrc<cr>

"Fast editing of .vimrc
"定义了<leader>ee快捷键，当输入,ee时，会打开~/.vimrc进行编辑。
map <silent> <leader>ee :e ~/.vimrc<cr>

"When .vimrc is edited, reload it
"定义了一个自动命令，每次写入.vimrc后，都会执行这个自动命令，source一次~/.vimrc文件
"autocmd! bufwritepost .vimrc source ~/.vimrc
"
nnoremap <C-l> gt
nnoremap <C-h> gT
nnoremap <leader>t : tabe<CR>

" The escape key is a long ways away. This maps it to the sequence 'jj'
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
nnoremap dh d0
nnoremap dl d$

inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

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
