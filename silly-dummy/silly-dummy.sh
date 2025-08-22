help=""

packages="$*"

# DEBUG START
#pkglist=/usr/software.list
pkglist=/tmp/software.list
# DEBUG END

for pkg in $packages
do

id=$(grep $pkg-v $pkglist | head -n 1)

[ -z $id ] && echo "Package not found: $pkg" && exit

ball=$id.tbz2

echo -e "\e[3mcreating fake package\e[0m"
echo
touch $pkg
touch install.sh
tar --sort=name --create --auto-compress --file $ball $pkg install.sh

#wget https://ermland.net/silly/software/$id.tbz2
echo FETCHING $id.tbz2...
echo
mkdir -p $id
cd $id
echo Current directory:
pwd
echo
tar xf ../$ball
#doas sh install.sh
echo INSTALLING $id
echo
cd ..

done
