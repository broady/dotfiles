I will begin adding some of my computer's configuration files to this repository.

Sample usage:

    $ git clone https://github.com/broady/dotfiles.git ~/.broady-dotfiles
    $ echo 'for f in ~/.broady-dotfiles/rc/*; do . $f; done' >> ~/.bash_login

### rc/cdgo.bash

Changes working directory to the source code of a Go package. Includes bash completion.

For example:

    $ cdgo net/http
    Changing into /Users/cbro/go/src/net/http

### rc/gh-markdown.bash

Renders GitHub flavored Markdown.

For example:

    $ gh-markdown -http README.md &
    $ open http://localhost:8787


### vimrc

    $ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    $ vim +PluginInstall +qall
    $ go get golang.org/x/tools/cmd/goimports
    $ go get github.com/nsf/gocode
    $ go get github.com/rogpeppe/godef
    $ cd ~/.vim/bundle/YouCompleteMe && ./install.py

# License

[Apache 2.0](LICENSE)
