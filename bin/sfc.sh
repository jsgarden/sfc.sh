#!/bin/bash

# Potential Bugs:
# None for now


# Declaring Colors



# Changing Directory (assuming it is in the Downloads folder)
cd "$HOME/Downloads"

# Tell user which app he is running
function appname {

echo
echo -e "Source file compiler by Jean-Simon Desjardins (http://www.github.com/jsgarden)"
	}

# Ask if build-essential package is installed. If not, install it
function buildpack {

echo
echo
echo -e "Do you have the build-essential package installed ? (Y/N) If unsure, yes."
read bldpk
sleep 1

if [ "$bldpk" == y ] || [ "$bldpk" == Y ]
	then
		echo
		echo
		echo -e "Installing..."
		sleep 1
		sudo apt-get install build-essential
		echo
		echo -e "Done !"
		filetype

elif [ "$bldpk" == n ] || [ "bldpk" == N ]
	then
		echo
		echo
		filetype
		
		
		
# Ask for file extension type
function filetype {

echo -e "File extension type ? (.xy.z)"
echo
read fltp

echo

echo -e "Name of file ?"
echo
read flnm

echo -e "Are you sure ? (Y/N)"
echo
read yn_flnm

if [ "$yn_flnm" == "y" ] || [ "$yn_flnm" == "Y" ];
    then
        extr

elif [ "$yn_flnm" == "n" ] || [ "$yn_flnm" == "N" ];
    then
        exit


# Start the extraction commands
function extr {

echo -e "Starting extraction..."
echo
sleep 1

if [ "$fltp" == ".tar.gz"]
    then
        tar -xzvf $flnm$fltp
        movedir
        
elif [ "$fltp" == ".tar.bz2" ]
	then
		tar -xjvf $flnm$fltp
		movedir
		
fi }


# Change current directory to the extracted one
function movedir {

echo -e "Displaying current folders..."
sleep 1
echo
ls
echo
echo -e "Please enter the name of the newly extracted folder:"
read foldernm
echo
echo

echo -e "Changing current directory..."
sleep 1
cd $HOME/Downloads/$foldernm
echo
echo -e "Done !"

conf }


# Start the ./configure command
function conf {

echo
echo -e "Configuring..."
sleep 1
