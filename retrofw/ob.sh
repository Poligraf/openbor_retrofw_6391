#!/bin/sh
mkdir -p /tmp/Paks;
mkdir -p /tmp/Saves;
ln -sf  "$@" /tmp/Paks/pak.pak;
mkdir -p $HOME/.OpenBOR/Saves/;
ln -sf  $HOME/.OpenBOR/Saves/ /tmp/Saves;
[ ! -f $HOME/.OpenBOR/Saves/default.cfg ] && cp ./default.cfgbackup $HOME/.OpenBOR/Saves/default.cfg
./OpenBOR.dge;
