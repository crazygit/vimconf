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

" Use menu to show command-line completion (in 'full' case)
set wildmenu

" Set command-line completion mode:
"   - on first <Tab>, when more than one match, list all matches and complete
"     the longest common  string
"   - on second <Tab>, complete the next full match and show menu
set wildmode=list:longest,full

" 文件名补全时忽略的文件类型
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
else
    set wildignore+=.git\*,.hg\*,.svn\*
endif

" Remember things between sessions
"
" '20  - remember marks for 20 previous files
" \"50 - save 50 lines for each register
" :20  - remember 20 items in command-line history
" %    - remember the buffer list (if vim started without a file arg)
" n    - set name of viminfo file
set viminfo='20,\"50,:20,%,n~/.viminfo
set viminfo+=! " make sure it can save viminfo

set winminheight=0      " Allow windows to get fully squashed
set winminwidth=0       " Allow windows to get fully squashed

" "Hidden" buffers -- i.e., don't require saving before editing another file.
" Calling quit will prompt you to save unsaved buffers anyways.
set hidden

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

set encoding=utf-8 " default set with the shell $LANG variable
set fileencodings=utf-8,gb18030,gbk,gb2312,cp936,ucs-bom
set termencoding=utf-8
set history=100 " How many lines of history to remember
set ffs=unix ",dos,mac " support all three, in this order

" none of these should be word dividers, so make them not be
set isk+=_,$,@,%,#,-

" Search
" :cn :cN
set grepprg=ack-grep
set grepformat=%f:%l%m


"""""""""""""""""""""
" Vim UI
""""""""""""""""""""
"set numberwidth=4 " minimum width to use for the number column,not a fix size Vim64不支持
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
set nowrapscan "
set so=15 " Keep 10 lines (top/bottom) for scope
set novisualbell " don't blink
set noerrorbells " no noises

""""""""""""""""""""""""
" Text Formatting/Layout
""""""""""""""""""""""""
set formatoptions+=mM " for charactors fold and patch
set cindent " do c-style indenting
" opening the file name beneath the cursor
set path+=.,/usr/include/*,

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Folding
" Enable folding, but by default make it act like folding is off,
" because folding is annoying in anything but a few rare cases
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set foldenable " Turn on folding

" 当前窗口的折叠方式: 语法高亮项目指定折叠
set foldmethod=syntax
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

" Turn on modelines
set modeline            " Scan for modeline commands
set modelines=4         " Scan 4 lines for modelines

" generate tags file for your system libraries, and ask your vim to load them
set tags+=/usr/local/include/tags
set tags+=/usr/include/tags

" Search for the tags file upward.  Cool! see :help file-searching
set tags+=tags;/

set ttyfast             " assume a fast terminal connection
"
" Per http://vim.sourceforge.net/tips/tip.php?tip_id=330
" this will stop the annoying html indentation.
" xmledit does some things for us, and combined with autoindent that's
" probably enough.
"
autocmd BufEnter *.erb,*.haml,*.htm,*.html,*.kid,*.php,*.rhtml,*.xml,*.xsd setlocal indentexpr= autoindent shiftwidth=2

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Turn persistent undo on 
" "    means that you can undo even when you close a buffer/VIM
" 只适用于Vim 7.3+
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
try
    set undodir=~/.vim/temp/
    set undofile
catch
endtry


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
" 快速插入时间
iab idate <c-r>=strftime("%Y-%m-%d %H:%M")<ESC><ESC>
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

