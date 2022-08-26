#!/bin/bash

cyan = `tput setaf6`
green = `tput setaf2`
yellow = `tput setaf3`
reset = `tput sgr0`

cd ~/Desktop/sreeraj/diary/
echo '${green}Entered in to the laravel project folder${reset}'
git checkout sreeraj_nic
git status
echo "${cyan}Enter the number of files want to be add ${green}// if 0 add all files${reset}"
read count
if [ $count -eq 0 ]
then
	git add .
	echo "${green}add all the files${reset}"
else
	while [ $count -gt 0 ];
	do
    		echo "${cyan}Add the file ${reset}"
		read file
		git add $file
		((count--))
	done
fi
git status
echo "${cyan}Enter the commit message${reset}"
read msg
 git commit -m $msg
echo "${green}Committed successfully and start to push...${reset}"

git push https://sreeraj-sanju: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@github.com/sreeraj-sanju/diary.git sreeraj_nic

echo "${green}pushed successfully${reset}"
echo "${yellow}branch checked to main and start to push${reset}"
git stash
git checkout main
git pull origin main
git pull origin sreeraj_nic
git push https://sreeraj-sanju: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@github.com/sreeraj-sanju/diary.git main
echo "${green}pushed to main branch and checked into sreeraj_nic${reset}"
git checkout sreeraj_nic
git stash pop
