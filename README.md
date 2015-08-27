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


# License

[Apache 2.0](LICENSE)
