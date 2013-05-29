set runtimepath+=~/.vim

source ~/.vim/vimconf/vundle_config.vim
source ~/.vim/vimconf/basic.vim
source ~/.vim/vimconf/keymaps.vim
source ~/.vim/vimconf/plugins_config.vim

try
source ~/.vim/my_configs.vim
catch
endtry

