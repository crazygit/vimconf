dot vim config
=======

Installation:

    git clone git@github.com:crazygit/vimconf.git

Create symlinks:

    ln -s ~/.vim/vimrc ~/.vimrc

Switch to the `~/.vim` directory, and fetch submodules:

    cd ~/.vim
    git submodule init
    git submodule update

Add new submodule:

    git submodule add git_url path
    example:
    git submodule add git://github.com/Lokaltog/vim-powerline.git bundle/vim-powerline


References To:

    http://blog.arganzheng.me/posts/living-with-vim.html
    http://www.cnblogs.com/chijianqiang/archive/2012/10/30/vim-1.html
