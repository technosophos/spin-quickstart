# This just speeds up the curl/bash install.
mkdir bin -p
cd bin
curl -fsSL https://developer.fermyon.com/downloads/install.sh > install.sh
chmod 700 install.sh
./install.sh
