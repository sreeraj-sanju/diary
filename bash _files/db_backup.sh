#!/bin/bash

cyan=`tput setaf 6`
green=`tput setaf 2`
yellow=`tput setaf 3`
reset=`tput setaf 5`
reset1=`tput sgr0`

echo "${cyan}Start to migrate the db${reset}"
mysqldump -u root -p diary > /media/sreeraj/20A81E3CA81E10C0/laravel/diary/db/diary_new.sql
echo "${green}Migration completed.${reset1}"