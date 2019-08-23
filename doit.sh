set -x

rsync --exclude=".gitsync" -av . .gitsync 
cd .gitsync
git status
git branch -m $HOSTNAME-auto
git add . 
git commit -m "Auto commit" && git push -f --set-upstream origin $HOSTNAME-auto

