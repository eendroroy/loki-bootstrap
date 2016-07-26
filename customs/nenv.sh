# rbenv
# $1: ruby version

if [ -d ~/.nenv ]; then
    echo '########## rbenv already installed, skipping.'
else
    sudo apt-get install -y libssl-dev libreadline-dev zlib1g-dev
	git clone https://github.com/ryuone/nenv.git ~/.nenv
    export PATH="$HOME/.nenv/shims:$HOME/.nenv/bin:$PATH"
    if which rbenv > /dev/null; then eval "$(nenv init - $0)"; fi
fi
