# Linux Dev Env 🐧

## Global ⚙️

Update apt-get

```
sudo apt-get update && sudo apt-get upgrade
```

Install global libraries.

    sudo apt install build-essential git cmake python3-dev npm vim \
    && sudo npm i -g eslint node-gyp eslint-plugin-react jshint npx solc prettier n
    && sudo apt-get update \
    && sudo apt-get upgrade \

NPM / Node / N
- [read through Resolving EACCESS Errors](https://docs.npmjs.com/resolving-eacces-permissions-errors-when-installing-packages-globally)
- [make sure `n` is working](https://github.com/tj/n)

Setup Git.

    git config --global credential.helper cache

## VIM ⌨️

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
    && git clone https://github.com/ryanoasis/vim-devicons \
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
    
To Do: add React stuff to eslint like hooks
- https://www.npmjs.com/package/eslint-plugin-react-hooks

    
## Python & Conda 🐍

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

Close the terminal
Open a new terminal

    conda
    conda update conda

Create a conda dev env

    conda create -n dev
    conda install numpy scikit-learn pandas jupyter tenserflow
    conda activate dev

Launch a Jupyter notebook the easy way (if you're working on a remote server and not a local environment)

    jupyter notebook --ip=0.0.0.0 --port=8888 --no-browser &
    ssh -R 80:localhost:8888 serveo.net

## DL / ML / RL 🔮

Google Colab is free, easy to share, and has Corgi Mode! 
- checkpointing for intermittend development
- easy to load external libraries
- free access to GPUs/TPUs

Haven't tried it with larger datasets recently, but atm it seems like the way to go.
- https://colab.research.google.com/

## Rust 🦀

First go here:
- [Rust Toolstate Updates](https://rust-lang-nursery.github.io/rust-toolstate/) - Updates on WIP Rust tools and if they are or are not ready yet.

Useful Rust dev things:
- [Automatic Rust FMT On Save](https://github.com/rust-lang/rust.vim#formatting-with-rustfmt) - Immediately formats code in VIM whenever you save.
- [Rust VIM](https://github.com/rust-lang/rust.vim/) - Vim configuration for Rust.
- [Rust Racer](https://github.com/racer-rust/racer) - Rust code completion utility.
- [Rust Language Server](https://github.com/rust-lang/rls) - The RLS provides a server that runs in the background, providing IDEs, editors, and other tools with information about Rust programs. It supports functionality such as 'goto definition', symbol search, reformatting, and code completion, and enables renaming and refactorings.
- [Rust Clippy](https://github.com/rust-lang/rust-clippy) - A bunch of lints to catch common mistakes and improve your Rust code.
- [Cargo Dependency Graph](https://github.com/m-cat/cargo-deps) - Cargo subcommand for building dependency graphs of Rust projects.

Other Rust things:
- [Rust Cheatsheet](https://cheats.rs/) - Shortlist of useful Rust commands.
- [/r/rust](https://www.reddit.com/r/rust/) - Generally friendly and helpful community. Often a great place to catch up on the latest Rust stuff.
- [The official Rust programming language forum](https://users.rust-lang.org) - Great place to ask or answer technical questions.
- [Rust Playground](https://play.rust-lang.org) - Online Rust REPL.
- [Official Rust Website](https://www.rust-lang.org/) - Links to almost everything Rust related.
