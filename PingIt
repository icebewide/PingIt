#!/usr/bin/env bash
version="[-] Version 0.95"
target=$1
b=$(tput bold)
help() {
echo -e "\n\e[00;31m###################################\e[00m" 
echo -e "\e[00;31m#\e[00m" "\e[00;33m PingIt\e[00m" "\e[00;31m#\e[00m"
echo -e "\e[00;31m###################################\e[00m"
echo -e "\e[00;33m# Mysite | https://github.com/icebewide/PingIt \e[00m"
echo -e "\e[00;33m# $version\e[00m\n"

                echo "Usage:"
                echo "$0 <ip address>  "
                echo "OPTIONS:"
                echo "-v        Show version" 
                echo "-h        Displays this help text"
                echo -e "\n"

echo -e "\e[00;31m#########################################################\e[00m"
}

# Show version
version() {
  echo $version
}

# Script Options
while getopts "h?:help:--help:-help:v" opt; do
  case "${opt}" in
    h|help|--help|-help|\?) help; exit ;;
    v) version; exit;;
    *) help; exit ;;
  esac
done

# Make sure there is an ip address
[ -z $target ] && echo -e "\e[00;31m${b}This programm needs an Ip adress\e[00m" && help && exit 1

# Continuously ping target 
while true
do
   if ping -q -c 2 -W 1 $target > /dev/null;then
     echo "$target : is up !"
     break
   else
     echo "$target : Seems down :("
   fi
 sleep 2
done


