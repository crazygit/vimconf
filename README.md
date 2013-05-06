# VIM终极配置
    不断学习VIM知识，整合他人的亮点，打造属于自己的VIM神器

## 安装使用

    git clone -b newconf git@github.com:crazygit/vimconf.git ~/.vim
    ln -s ~/.vim/vimrc ~/.vimrc
    cd ~/.vim
    git submodule init
    git submodule update

## 添加新的插件模块

    git submodule add git_url path
    example:
    git submodule add git://github.com/Lokaltog/vim-powerline.git bundle/vim-powerline


## 可以添加自己独有的VIM配置到
    ~/.vim/my_configs.vim

## 插件
    * pathogen
    * bufExplorer
    * bufExplorer
    * MRU
    * Pydiction 添加自己的模块补齐(bundle/Pydiction/doc/README.txt)

## 一些快捷键
    <F2> 运行脚本
    <F3> 行号设置
    <F4> 粘贴设置
    <F5> YRShow
    <F6> Tlist
    <F8> NERDTree
    <F9> PHP语法检查


## 引用

* <http://blog.arganzheng.me/posts/living-with-vim.html>
* <http://www.cnblogs.com/chijianqiang/archive/2012/10/30/vim-1.html>
* <https://github.com/amix/vimrc>
