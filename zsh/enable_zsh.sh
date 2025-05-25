#!/bin/sh

echo "Do you want to install zsh [y/n] : " 
read input1

if [ "$input1" = "y" ]
then
	echo "installing zsh"
	sudo apt update
	apt install zsh -y
else
	echo "exiting"
	exit 1
fi

chsh -s $(which zsh)

echo  "Do you want to install ohmyzsh [y/n] : "
read input2
if [ "$input2" = 'y' ]
then
	sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
else
	echo "exiting"
	exit 1
fi 


