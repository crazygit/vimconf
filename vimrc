" Maintainer:   Liang Lin <lianglin999@gmail.com>
" Last change:

set nocompatible
"关闭与vi的兼容

set backspace=indent,eol,start
"注明在插入模式下哪里允许退格键<BS>删除光标前的字符。逗号分隔的三个值分别是指:
"行首的空白字符， 换行符和插入模式开始处之前的字符

set autoindent
"使vim在启动新行的时候使用与前一行一样的缩进

"if has("vms")
"    set nobackup
"else
"    set backup
"endif
" 告诉vim当覆盖一个文件的时候保留一个备份，但vms系统除外，因为vms系统会自动产生
" 备份文件，备份文件的名称是在原来的文件名上加上"~"字符

set history=50
"保存50个命令和50个查找模式的命令

set ruler
"总在vim的右下角显示当前光标的位置

set showcmd
"在右下角显示未完成的命令

set incsearch
"在输入部分查找模式时显示相应的匹配点

map Q gq
" "Q" 命令会启动Ex模式， 让不使用Ex模式

if &t_Co > 2 || has("gui_running")
    syntax on
    set hlsearch
endif
"在有色彩的时候，激活语法高显亮功能

filetype plugin indent on
"启动三个灵巧的机制
"1.文件类型探测
"2.使用文件类型相关的插件
"3.使用缩进文件

autocmd FileType text setlocal textwidth=78
"当一行长于78个字符的时候自动换行

set nowrap
"vim默认自动对长行进行回绕,此处禁止回绕

set sidescroll=10
"当你移动到那些不能显示的文字上,Vim 会自动向右滚动让你看到后面的文字,要一次滚动十个字符

set whichwrap=b,s
"很多命令只能在一行中移动。你可以通过 ’whichwrap’ 选项改变它
"当光标处于行首时用 <BS> 键可以回到前一行的结尾;当处于行尾时用 <Space>
"键可以移动到下一行的行首.

set listchars=tab:\|\ ,trail:.,extends:>,precedes:<,eol:$ 
"设置当执行set list命令的时候一些不可见的字符怎么显示

set iskeyword+=-
"’iskeyword’ 选项指定哪些字母可以出现在一个单词中
""@" 表示所有字母。"48-57" 表示 ASCII 字符 48-57 ,即数字 0 到 9。"192-255" 是
"可显示的拉丁字符

set cmdheight=2
"设定显示命令行所用的行数

colorscheme evening
"设置配色主题

set number
"显示行号

set nobackup
"不产生备份文件

"set backup
"让vim产生备份文件

"set backupext=.bak
"默认情况备份文件名是在原始文件名后面加上~, 修改后缀名为bak

"set backupdir=~/.vim/tmp/backup/
"默认情况是与原始文件的路径一致, 设置备份文件的路径

"set patchmode=.orig
"编辑文件时,先将原始文件拷贝一份到filename.orig作为备份

set shiftwidth=4
"设置每次使用>或<的时候一次平移4个空格
