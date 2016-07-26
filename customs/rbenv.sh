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
fi
