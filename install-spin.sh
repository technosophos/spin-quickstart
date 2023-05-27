# This just speeds up the curl/bash install.
export PATH=$PWD/bin:$PATH
mkdir bin -p
cd bin
curl -fsSL https://developer.fermyon.com/downloads/install.sh > install.sh
chmod 700 install.sh
./install.sh
spin templates install --git https://github.com/fermyon/spin-js-sdk --update
spin plugins update
spin plugins install js2wasm --yes
