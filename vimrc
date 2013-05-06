set runtimepath+=~/.vim

source ~/.vim/vimrcs/basic.vim
source ~/.vim/vimrcs/keymaps.vim
source ~/.vim/vimrcs/plugins_config.vim

try
source ~/.vim/my_configs.vim
catch
endtry

