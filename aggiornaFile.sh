#!/bin/bash

echo "---- Copio file dalle varie origini ----"
cp -f ~/.gitconfig ./.gitconfig
cp -f ~/.zshrc ./.zshrc
cp -f ~/.config/nvim/init.vim ./init.vim

giorno=`date +%Y-%m-%d`
ora=`date +%T`

echo "---- Stage modifiche ----"

git add .

echo "---- Creo commit ----"

git commit -m "Modifiche in data e ora $giorno $ora"

echo "---- Push modifiche su GitHub"

git push origin

echo "---- FINITO, puoi tornare a fare danni ----"
