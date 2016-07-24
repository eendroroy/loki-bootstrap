# rbenv
# $1: ruby version

if [ -d ~/.rbenv ]; then
    echo '########## rbenv already installed, skipping.'
else
    sudo apt-get install -y libssl-dev libreadline-dev zlib1g-dev
    git clone git://github.com/rbenv/rbenv.git ~/.rbenv
    mkdir -p ~/.rbenv/plugins
    cd ~/.rbenv/plugins
    git clone git://github.com/rbenv/ruby-build.git
    export PATH="$HOME/.rbenv/shims:$HOME/.rbenv/bin:$PATH"
    if which rbenv > /dev/null; then eval "$(rbenv init - zsh)"; fi
    rbenv install 2.3.1
    rbenv global 2.3.1
    gem install bundler
    rbenv rehash
fi
