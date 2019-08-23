set -x
rsync --exclude=".gitsync" -a . .gitsync 
cd .gitsync
git status
git branch -b $HOSTNAME-auto
git add . 
git commit -m "Auto commit" && git push -f --set-upstream origin $HOSTNAME-auto

