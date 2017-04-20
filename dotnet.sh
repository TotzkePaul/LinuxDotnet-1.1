#!/bin/bash


#read -p "Enter user: " user
#echo ubuntu
#PATH="/home/"
#PATH+=$user
#PATH+="/www/" 
#echo  "$PATH"


mkdir  /home/ubuntu/www/
sudo apt-get update

#Get curl and unzip
sudo apt-get install unzip curl

sudo sh -c 'echo "deb [arch=amd64] https://apt-mo.trafficmanager.net/repos/dotnet-release/ xenial main" > /etc/apt/sources.list.d/dotnetdev.list'
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 417A0893
sudo apt-get update



#remove previous SDK install
#https://github.com/dotnet/cli/blob/rel/1.0.0/scripts/obtain/uninstall/dotnet-uninstall-debian-packages.sh



#Install .NET Core SDK
sudo apt-get install dotnet-dev-1.0.1

#
curl -H 'Accept: application/vnd.github.v3.raw' -O -L https://api.github.com/repos/TotzkePaul/Main.Web2

#Run the app
dotnet restore
dotnet run
