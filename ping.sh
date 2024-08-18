#!/usr/bin/env bash
version="version 0.95"
target=$1
help() {
  echo -e "\n\e[00;31m###################################\e[00m" 
echo -e "\e[00;31m#\e[00m" "\e[00;33mYAPU : Yet another ping utility\e[00m" "\e[00;31m#\e[00m"
echo -e "\e[00;31m###################################\e[00m"
echo -e "\e[00;33m# Mysite | https://github.com/icebewide/ping.sh \e[00m"
echo -e "\e[00;33m# $version\e[00m\n"

                echo "Usage:"
                echo "$0 <ip address>  "
                echo "OPTIONS:"
                echo "-v        Show version" 
                echo "-h        Displays this help text"
                echo -e "\n"

echo -e "\e[00;31m#########################################################\e[00m"
}

while true
do
   ping -q -c 2 -W 1 $target > /dev/null &&
     echo "$target Up !"
     break || 
     echo "$target Down"
     sleep 2
done

# Show version
version() {
  echo $version
}

[ -z $target ] && echo "This programm needs an Ip adress"

while getopts "h?:help:--help:-help:v" opt; do
  case "${opt}" in
    h|help|--help|-help|\?) help; exit ;;
    v) version; exit;;
    *) help; exit ;;
  esac
done
