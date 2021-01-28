#!/bin/sh


echo "[+] Changing directory to /tmp"

cd /tmp

echo "[+] Getting the source from https://www.sudo.ws/"
echo "[!] This might take a while"

wget -q  --show-progress  "https://www.sudo.ws/dist/sudo-1.9.5p2.tar.gz"

echo "[+] Extracting the files"
tar xzf sudo-1.9.5p2.tar.gz

echo "[+] Going into sudo-1.9.5p2"
cd sudo-1.9.5p2/

echo "[+] Configuring..."
./configure

echo "[+] Installing... (This might take a while)"
make && make install
