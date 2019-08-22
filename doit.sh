set -x

rsync --exclude=".gitsync" -artv . .gitsync 
then
	cd .gitsync
	git status
	git branch -m $(hostname)-auto
	git add . 
	git commit -m "Auto commit"
	git push -f --set-upstream origin $(hostname)-auto

fi
