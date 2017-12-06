#!/bin/bash

mkdir ~/.cache/nmap.emanuelesorce

cp -r bin/ ~/.cache/nmap.emanuelesorce
cp -r libs/ ~/.cache/nmap.emanuelesorce
cp -r nmap/ ~/.cache/nmap.emanuelesorce

cd ~/.cache/nmap.emanuelesorce/bin

tar xf nmap.tar
rm nmap.tar
tar xf nping.tar
rm nping.tar
tar xf ncat.tar
rm ncat.tar

echo "export PATH=\$PATH:~/.cache/nmap.emanuelesorce/bin" >> ~/.bashrc
echo "export LD_LIBRARY_PATH=~/.cache/nmap.emanuelesorce/libs:\$LD_LIBRARY_PATH" >> ~/.bashrc
echo "export NMAPDIR=~/.cache/nmap.emanuelesorce/nmap/" >> ~/.bashrc

echo
echo "NMAP INSTALLED SUCCESSFULLY"
echo "restart terminal app to be able to call installed binaries"
echo
