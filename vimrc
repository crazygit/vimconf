set runtimepath+=$HOME/.vim

source $HOME/.vim/vimconf/vundle_config.vim
source $HOME/.vim/vimconf/basic.vim
source $HOME/.vim/vimconf/keymaps.vim
source $HOME/.vim/vimconf/plugins_config.vim


try
source $HOME/.vim/my_configs.vim
catch
endtry

if has("win32")

    "�����ļ��Ĵ�����ʽ
    set encoding=utf-8
    set termencoding=utf-8
    set fileencoding=utf-8
    set fileencodings=ucs-bom,utf-8,chinese,cp936

    "�˵�������
    source $VIMRUNTIME/delmenu.vim
    source $VIMRUNTIME/menu.vim

    "��ʾ��Ϣ����
    language messages zh_CN.utf-8

endif

