set nocompatible
set backspace=indent,eol,start
set autoindent
if has("vms")
	set nobackup
else
	set backup
endif
set history=50
set ruler
set showcmd
set incsearch
map Q gq
if &t_Co > 2 || has("gui_running")
	syntax on
	set hlsearch
endif
filetype plugin indent on
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Work On Company
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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

set backup
"让vim产生备份文件

set backupext=.bak
"默认情况备份文件名是在原始文件名后面加上~, 修改后缀名为bak

set backupdir=~/.vim/tmp/backup/
"默认情况是与原始文件的路径一致, 设置备份文件的路径

set patchmode=.orig
"编辑文件时,先将原始文件拷贝一份到filename.orig作为备份

