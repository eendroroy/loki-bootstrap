# pyenv
# $1: ruby version

if [ -d ~/.pyenv ]; then
    echo '########## pyenv already installed, skipping.'
else
    sudo apt-get install -y libssl-dev libreadline-dev zlib1g-dev
    git clone https://github.com/yyuu/pyenv.git ~/.pyenv
    export PATH="$HOME/.pyenv/shims:$HOME/.pyenv/bin:$PATH"
    if which pyenv > /dev/null; then eval "$(pyenv init - zsh)"; fi
    pyenv install 2.7.12
    pyenv global 2.7.12
    pyenv rehash
fi
