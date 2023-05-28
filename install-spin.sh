# This just speeds up the curl/bash install.
export PATH=$PWD/bin:$PATH
# Because of the container setup, we need this installed by root
sudo npm install -D webpack-cli

# Now  we do the basic Spin installation
mkdir bin -p
cd bin
curl -fsSL https://developer.fermyon.com/downloads/install.sh > install.sh
chmod 700 install.sh
./install.sh

# Now we initialize Spin and add JS support
spin templates install --git https://github.com/fermyon/spin-js-sdk --update
spin plugins update
spin plugins install js2wasm --yes
