#!/bin/sh
export SODIUM_INSTALL=system
export BIN_SH=$PREFIX/bin/sh
export TMPDIR=/data/data/com.termux/files/tmp
export TMP=$TMPDIR
export TEMP=$TMPDIR
export CONFIG_SHELL=$BIN_SH

mkdir $TMPDIR

apt install -y python2 python2-dev libffi-dev libsodium-dev openssl-dev libgmp-dev libev-dev

EMBED=0 pip2 install gevent
pip2 install pycrypto

# only ansible 1.8.x is supported right now (sem_lock errors with >=1.9 and 2.x
pip2 install 'ansible'
