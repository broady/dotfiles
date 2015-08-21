I will begin adding some of my computer's configuration files to this repository.

Sample usage:

    $ git clone https://github.com/broady/dotfiles.git ~/.broady-dotfiles
    $ echo '. ~/.broady-dotfiles/cdgo.bash' >> ~/.bash_login

### cdgo.bash

Changes working directory to the source code of a Go package. Includes bash completion.

For example:

    $ cdgo net/http
    Changing into /Users/cbro/go/src/net/http

# License

[Apache 2.0](LICENSE)
