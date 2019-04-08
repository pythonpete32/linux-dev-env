To Do
- add NPM/Node -g stuff to the First section 

# VIM Stuff

1) Install system wide libraries

    sudo apt install build-essential git cmake python3-dev \
    && sudo apt-get update \
    && sudo apt-get upgrade \
    && git config --global credential.helper cache

2) Install VIM plugins

    mkdir -p ~/.vim/pack/plugins/start/ \
    && cd ~/.vim/pack/plugins/start/ \
    && git clone https://github.com/scrooloose/nerdtree.git \
    && git clone https://github.com/w0rp/ale.git \
    && git clone https://github.com/vim-airline/vim-airline.git \
    && git clone https://github.com/elzr/vim-json.git \
    && git clone https://github.com/rust-lang/rust.vim.git \
    && git clone https://github.com/racer-rust/racer.git \
    && git clone https://github.com/tomlion/vim-solidity.git \
    && git clone https://github.com/pangloss/vim-javascript.git \
    && git clone https://github.com/mhartington/oceanic-next.git \
    && git clone https://github.com/Valloric/YouCompleteMe.git \
    && cd YouCompleteMe && git submodule update --init --recursive \
    && python3 install.py --all \
    && cd \
    && vim .vimrc
