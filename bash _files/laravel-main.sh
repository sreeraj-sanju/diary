#!/bin/bash

cyan=`tput setaf 6`
green=`tput setaf 2`
yellow=`tput setaf 3`
reset=`tput setaf 5`
reset1=`tput sgr0`

cd /media/sreeraj/20A81E3CA81E10C0/laravel/diary/
 echo "${green}Entered in to the laravel project folder${reset}" 

git checkout main
git pull origin main
git pull origin sreeraj
echo "${reset1}"
git push origin main

echo "${green}Pushed to main branch${reset}"
