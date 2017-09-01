#!/usr/bin/env bash
echo
echo "Install git global config to ~/.gitconfig ? (yes / no)"
echo ">>> This will override the previous one <<<"
read answer

if [ "$answer" == "yes" ]; then
	ts=$(date +%s)
	echo
	echo "Saving previous one to ./.gitconfig-$ts.save ..."
	cp -fv ~/.gitconfig .gitconfig-$ts.save
	echo
	echo "Copying new one ..."
	cp -fv ./.gitconfig ~/.gitconfig
	echo
fi