# Linux Dev Env 

### Global

    sudo apt install build-essential git cmake python3-dev npm \
    && sudo apt-get update \
    && sudo apt-get upgrade \
    && sudo npm i -g eslint node-gyp eslint-plugin-react jshint npx solc prettier
    
    git config --global credential.helper cache

### VIM

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
 
Navigate back to the home directory

    cd
 
Create a .vimrc and then copy and save the .vimrc from this repo

    vim .vimrc
    
Fix JSHint and ESLint
- you might have to run `npm init` and `eslint --init` in the root directory first

    echo "use 'esversion: 8'" > .jshint \
    && echo -e "{\n\tuse 'esversion: 8'\n\t}" > .jshintrc \
    && echo -e "env: {\n\tnode: true,\n\tes8: true\n}\nrules: {\n\t'no-console': 'off',\n}," > .eslintrc.js
