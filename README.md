# Linux Dev Env 🐧

### Global

Install global libraries.

    sudo apt install build-essential git cmake python3-dev npm \
    && sudo apt-get update \
    && sudo apt-get upgrade \
    && sudo npm i -g eslint node-gyp eslint-plugin-react jshint npx solc prettier
    
Setup Git.

    git config --global credential.helper cache

### VIM

Setup VIM8 directories and install plugins.

    `#Create VIM8 Plugin Directory` \
    mkdir -p ~/.vim/pack/plugins/start/ \
    && cd ~/.vim/pack/plugins/start/ \
    `#Install Global Plugins` \
    && git clone https://github.com/scrooloose/nerdtree.git \
    && git clone https://github.com/w0rp/ale.git \
    && git clone https://github.com/Valloric/YouCompleteMe.git \
    && git clone https://github.com/sheerun/vim-polyglot \
    && git clone https://github.com/Raimondi/delimitMate \
    && git clone https://github.com/vim-airline/vim-airline.git \
    && git clone https://github.com/mhartington/oceanic-next.git \
    `#Install Language Specific Plugins` \
    && git clone https://github.com/elzr/vim-json.git \
    && git clone https://github.com/pangloss/vim-javascript.git \
    && git clone https://github.com/rust-lang/rust.vim.git \
    && git clone https://github.com/racer-rust/racer.git \
    && git clone https://github.com/tomlion/vim-solidity.git \
    `#Init YouCompleteMe` \
    && cd YouCompleteMe && git submodule update --init --recursive \
    && python3 install.py --all \
 
Navigate back to the home directory.

    cd
 
Create a .vimrc and then copy and save the .vimrc from this repo.

    vim .vimrc
    
Set parameters for ESLint and JSHint to play nicely with es8. You might have to init npm and eslint in the home directory. If so, just say yes to all. Then run the following echo commands to set paramaters for JSHint and ESLint.

    npm init
    eslint --init

    echo "use 'esversion: 8'" > .jshint \
    && echo -e "{\n\tuse 'esversion: 8'\n\t}" > .jshintrc \
    && echo -e "env: {\n\tnode: true,\n\tes8: true\n}\nrules: {\n\t'no-console': 'off',\n}," > .eslintrc.js
    
### Miniconda

Grab the latest version
- [https://docs.conda.io/en/latest/miniconda.html](https://docs.conda.io/en/latest/miniconda.html)

Then 

    bash Miniconda3-latest-Linux-x86_64.sh
    
Please, press ENTER to continue

    enter

Do you accept the license terms?

    yes
    
Miniconda3 will now be installed into this location: (the default location is a folder in the home directory)
    
    enter
    
Do you wish the installer to initialize Miniconda3
in your /home/deliciousdohnuts/.bashrc ?

    yes

Close the terminal.
Open a new terminal.

    conda
    conda update conda

### Conda Dev Env

    conda create -n dev
    conda install numpy scikit-learn pandas jupyter tenserflow
    conda activate dev
