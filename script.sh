wget https://github.com/git/git/archive/v2.9.2.tar.gz .
tar -xvf v2.9.2.tar.gz
cd git-2.9.2/
make NO_OPENSSL=YesPlease
make NO_OPENSSL=YesPlease install
export PATH=$PATH:~/bin
cd ..
rm -rf git-2.9.2 v2.9.2.tar.gz
