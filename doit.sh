set -x
rm -rf .gitsync
rsync -a . .gitsync
cd .gitsync
$(
git status
git branch -m $(hostname)-auto
git add . 
git push origin) >> gitsync.log

