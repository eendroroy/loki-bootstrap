if [[ -f /etc/apt/sources.list.d/dotnetdev.list ]]; then
    echo "########## .NET already isntalled. Skipping ..."
else
    sudo sh -c 'echo "deb [arch=amd64] https://apt-mo.trafficmanager.net/repos/dotnet-release/ xenial main" > /etc/apt/sources.list.d/dotnetdev.list'
    sudo apt-key adv --keyserver apt-mo.trafficmanager.net --recv-keys 417A0893
    sudo apt-get update -y
    sudo apt-get install -y --force-yes dotnet-dev-1.0.0-preview2-003121
fi
