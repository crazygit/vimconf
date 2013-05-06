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

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove 
map <leader>t<leader> :tabnext 

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
nmap <space> <pagedown>

" Easier to type, and I never use the default behavior.
" H到行首,L到行末
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

map <F8> :NERDTreeToggle<CR>
map <F6> :TlistToggle<CR>

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

"写入文件安前，去除bash,python脚本的空白
"autocmd BufWritePre * call RemoveTrailingWhitespace()
autocmd BufWritePre *.py call RemoveTrailingWhitespace()
autocmd BufWritePre *.sh call RemoveTrailingWhitespace()


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
map <F9> :!php -l %<CR>

"设置使用K查看PHP帮助文档
set runtimepath+=$HOME/.vim/php/
autocmd BufNewFile,Bufread *.module,*.inc,*.php set keywordprg="help"

" "Q" 命令会启动Ex模式， 让不使用Ex模式
map Q gq

" "sudo" save:
command W w !sudo tee % > /dev/null


" Spell check
map <leader>sc :setlocal spell!<cr>


