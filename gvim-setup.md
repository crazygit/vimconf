## windows 下gvim配置。
1. 下载并安装gvim

2. 将gvim的安装路径添加到环境变量（C:\Program Files\Vim\vim73）

3. 下载msysgit

    设置
    1. 修改`C:\\Program Files\\Git\\etc\\inputrc`
        <pre>
        set output-meta on
        set convert-meta off
        </pre>
    2. 修改`C:\\Program Files\\Git\\etc\\profile`，添加
        <pre>
        alias ls='ls --show-control-chars --color=auto'
        export LESSCHARSET=utf-8
        </pre>
    3. 修改`C:\\Program Files\\Git\\etc\\gitconfig`,添加
        <pre>
        [gui]
            encoding = utf-8
        [i18n]
            commitencoding = utf-8
            logoutputencoding = utf-8
       </pre>
    4.替换vim, 修改C:\\Program Files\\Git\\bin\\vim为
        <pre>
        exec /c/Program\\ Files/Vim/vim73/gvim "$@"
        </pre>

4. 下载ctags并解压到`C:\ctags58`

5. 运行命令行提示窗口(press Win-R, type cmd, press Enter)

    <pre>
    $ cd %USERPROFILE%  # cd C:\Users\Administrator
    $ git clone git@github.com:crazygit/vimconf.git .vim
    $ cp .vim/vimrc _vimrc
    $ vim +BundleInstall +qall # 安装插件
    </pre>

6. 修改`.vim/vimconf/plugins_config.vim`文件中的ctags路径为"C:\\ctags58\\ctags.exe"

7. 下载python-2.7.5.msi安装，添加`C:\Python27`和`C:\Python27\Scripts`到环境变量

8. 安装easy_install和flake8
    <pre>
    $ curl https://bitbucket.org/pypa/setuptools/raw/bootstrap/ez_setup.py | python
    $ easy_install flake8
    </pre>
