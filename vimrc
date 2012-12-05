filetype plugin indent on   " 加载插件和支持缩进
colorscheme evening         "选择夜晚主题

set background=dark         "设置背景为黑色
set nocompatible            " 不要支持vi模式
set ai                      "自动缩进
set bs=2                    "在insert模式下用退格键删除
set showmatch               "代码匹配
set laststatus=2            "总是显示状态行
set expandtab               "以下三个配置配合使用，设置tab和缩进空格数
set shiftwidth=4
set tabstop=4
"set cursorline              "为光标所在行加下划线
set number                  "显示行号
set autoread                "文件在Vim之外修改过，自动重新读入
set ignorecase              "检索时忽略大小写
set hls                     "检索时高亮显示匹配项
set helplang=cn             "帮助系统设置为中文
set foldmethod=syntax       "代码折叠

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
nnoremap <C-l> gt
nnoremap <C-h> gT
nnoremap <leader>t : tabe<CR>

"conf for plugins {{ 插件相关的配置
"状态栏的配置
"powerline{
"set guifont=PowerlineSymbols\ for\ Powerline
"set t_Co=256
"let g:Powerline_symbols = 'fancy'
"}


"pathogen是Vim用来管理插件的插件
" Call "filetype off" first to ensure that bundle ftplugins can be added to the
" path before we re-enable it later in the vimrc.
:filetype off
call pathogen#infect()
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

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
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General settings
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"" Tab Settings. I like tabstops of 4, and prefer spaces to tabs.
set softtabstop=4

" Tab in front of line uses shiftwidth - good for coding
set smarttab

" Round indent to multiple of 'shiftwidth' for > and < commands
set shiftround

" Go with smartindent if there is no plugin indent file.
set autoindent  smartindent

" Fix backspace indentation, allow backspacing over all in insert mode
set backspace=indent,eol,start

" Backups {{{
set directory=~/.vim/tmp/swap/   " swap files
" set backupdir=~/.vim/tmp/backup// " backups
" set backup                        " enable backups
set noswapfile                    " It's 2012, Vim.

" Make the command line two lines high and change the statusline display to
" " something that looks useful.
set cmdheight=2

" Go back to the position the cursor was on the last time this file was edited
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")|execute("normal `\"")|endif

" Show mode I'm in
set showmode

" Show (partial) commands (or size of selection in Visual mode) in the status line
set showcmd

set ruler               " Show cursor location
set number

" I want the text width to be 79, and for it to wrap.
" These lines manage my line wrapping settings and also show a colored column at
" 85 characters (so I can see when I write a too-long line of code).
set wrap
set textwidth=79
set linebreak
set showbreak=↪
set formatoptions=qrn1

if exists('+colorcolumn')
    set colorcolumn=85
else
    au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>85v.\+', -1)
endif

" This makes Vim show invisible characters with the same characters that
" TextMate uses. You might need to adjust your color scheme so they’re not too
" distracting. This Vimcast has more information.
"set list
set listchars=tab:\|\ ,trail:.,extends:>,precedes:<,eol:$ " what to show when I hit :set list

" Scrolling options
set scrolloff=3 " Keep some 3 more lines for scope

" Better Search
" Don't highlight results of a search
set nohlsearch
set incsearch


" Make case-insensitive search the norm
set smartcase

" Turn on "very magic" regex status by default for searches.
" :he /magic for more information
" fix Vim’s horribly broken default regex “handling” by
" automatically inserting a \v before any string you search for. This turns off
" Vim’s crazy default regex characters and makes searches use normal regexes. I
" already know Perl/Python compatible regex formatting, why would I want to
" learn another scheme?
"nnoremap / /\v
"vnoremap / /\v

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
set mousemodel=extend

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" My various  maps, settings, and autocmds, and tips:)
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" save changes
map <Leader>s :w<CR>
" exit vim without saving any changes
map <Leader>q :q!<CR>
" exit vim saving changes
map <Leader>w :x<CR>

" "sudo" save:
":cmap w!! w !sudo tee % >/dev/null

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" user defined command
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
command W w !sudo tee % > /dev/null

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

" Toggle line numbers
nmap <silent> <F4> :set number!<CR>

" Toggle paste
set pastetoggle=<F6>

" page down with <Space>
"nmap <space> <pagedown>

" Easier to type, and I never use the default behavior.
"H到行首,L到行末
noremap H ^
noremap L g_

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

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""
" Yankring
"
"""
nnoremap <silent> <F3> :YRShow<cr>
inoremap <silent> <F3> <ESC>:YRShow<cr>

"""
" matchit
"
"""
map <tab> %




"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set encoding=utf-8 " default set with the shell $LANG variable
set fileencodings=utf-8,gb18030,gbk,gb2312,cp936,ucs-bom
set termencoding=utf-8
set history=100 " How many lines of history to remember
set ffs=unix ",dos,mac " support all three, in this order
set viminfo+=! " make sure it can save viminfo
" none of these should be word dividers, so make them not be
set isk+=_,$,@,%,#,-

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Search
" :cn :cN
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set grepprg=ack-grep
set grepformat=%f:%l%m
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Files/Backups
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nobackup " make backup file
set makeef=error.err " When using make, where should it dump the file

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Spell check
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"setlocal spell spelllang=en_us

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim UI
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set ruler " Always show current positions along the bottom
"set numberwidth=4 " minimum width to use for the number column,not a fix size Vim64不支持
set hid " you can change buffer without saving
set backspace=2 " make backspace work normal
set whichwrap+=<,>,h,l  " backspace and cursor keys wrap to
"set mouse=a " use mouse everywhere
set shortmess=atI " shortens messages to avoid 'press a key' prompt
set report=0 " tell us when anything is changed via :...
set lz " do not redraw while running macros (much faster) (LazyRedraw)
" make the splitters between windows be blank
set fillchars=vert:\ ,stl:\ ,stlnc:\
"set lsp=0 " space it out a little more (easier to read)

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Visual Cues
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set hlsearch " do highlight searched for phrases
set nowrapscan "
set so=15 " Keep 10 lines (top/bottom) for scope
set novisualbell " don't blink
set noerrorbells " no noises

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Text Formatting/Layout
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set formatoptions+=mM " for charactors fold and patch
set si " smartindent
set cindent " do c-style indenting
"set noexpandtab " real tabs please!
set nowrap " not wrap lines
" opening the file name beneath the cursor
set path+=.,/usr/include/*,
nnoremap gf <c-w>gf " open file in a new tab

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
" File Explorer
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:explVertical=1 " should I split verticially
let g:explWinSize=35 " width of 35 pixels

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CTags and Taglist
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Minibuf
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" make tabs show complete (no broken on two lines)
let g:miniBufExplTabWrap = 1
let g:miniBufExplModSelTarget = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Matchit
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let b:match_ignorecase = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Autocommands
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ensure every file does syntax highlighting (full)
autocmd BufEnter * :syntax sync fromstart
"autocmd GUIEnter * :simalt ~x -- " having it auto maximize the screen

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Auto-Complete:
" 1. Templates
" 2. Abbreviations
"    usage:
"    iabbrev name payload
"    cabbrev name othername
" 3. Insert-mode auto-complete
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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

" syntastic
" from https://github.com/spf13/spf13-vim/blob/master/.vimrc
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
autocmd BufWritePre * call RemoveTrailingWhitespace()
"写入文件安前，去除bash,python脚本的空白
autocmd BufWritePre *.py call RemoveTrailingWhitespace()
autocmd BufWritePre *.sh call RemoveTrailingWhitespace()

"写了python文件后，调用flake8检查文件
let g:pyflakes_use_quickfix = 0
let g:flake8_ignore="E501"
autocmd BufWritePost *.py call Flake8()

map <F2> <Esc>:!python %<CR>
syn on                      "语法支持
