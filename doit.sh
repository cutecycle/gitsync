set -x

cd /git
rsync -a . .gitsync
cd .gitsync
git status
git branch -m $(hostname)-auto
git add . 
git commit -m "Auto commit"
git push --set-upstream origin $(hostname)-auto

