
#chokidar "*" -i .git -i .gitsync  -c ./doit.sh
set -x
chmod 400 * ~/.ssh/*
eval `ssh-agent`
ssh-add ~/.ssh/*

while true
do
sleep 1
./doit.sh
done
