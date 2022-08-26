#!/bin/bash

cd ~/Desktop/sreeraj/diary/
echo 'Entered in to the laravel project folder'
git checkout sreeraj_nic
git status
echo "Enter the number of files want to be add // if 0 add all files"
read count
if [ $count -eq 0 ]
then
	git add .
	echo "add all the files"
else
	while [ $count -gt 0 ];
	do
    		echo "Add the file "
		read file
		git add $file
		((count--))
	done
fi
git status
echo "Enter the commit message"
read msg
 git commit -m msg
echo "Committed successfully and start to push..."

git push https://sreeraj-sanju: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@github.com/sreeraj-sanju/diary.git sreeraj_nic

echo "pushed successfully"
echo "branch checked to main and start to push"
git stash
git checkout main
git pull origin main
git pull origin sreeraj_nic
git push https://sreeraj-sanju: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@github.com/sreeraj-sanju/diary.git main
echo "pushed to main branch and checked into sreeraj_nic"
git checkout sreeraj_nic
git stash pop
