#!/bin/bash
case $1 in 
# go to
home)
cd $home
;;
downloads)
cd ~/Downloads
;;
# misc
silly)
uwusay
;;
system)
hyfetch
;;
say)
echo $2
;;
# package utils
paclist)
sudo pacman --query
;;
pacinstall)
sudo pacman -S $2
;;
pacremove)
sudo pacman -Rns $2
;;
sysupdate)
sudo pacman -Syu
;;
aur-config)
mkdir ~/aur
echo "created aur folder"
;;
aur-install)
cd ~/aur
echo "enter package name: "
read aurname
git clone https://aur.archlinux.org/$aurname.git
cd $aurname
makepkg -si
;;
#text utils
edit-file)
echo "file editor: "
read editor
echo "file:"
read file
$editor $file
;;
suedit-file)
echo "file editor: "
read editor
echo "file:"
read file
sudo $editor $file
;;
copy)
echo "source: "
read file1
echo "destination: "
read file2
cp $file1 $file2
echo "file copied! :3"
;;
sucopy)
echo "source: "
read file1
echo "destination: "
read file2
sudo cp $file1 $file2
echo "file copied! :3"
;;
esac
exec bash