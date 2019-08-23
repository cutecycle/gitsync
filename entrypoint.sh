set -x
cp -r /tempssh/* ~/.ssh
chmod 400 ~/.ssh/*
eval `ssh-agent`
ssh-add ~/.ssh/*

ssh -T git@github.com
ssh-keyscan -H github.com >> ~/.ssh/known_hosts
while true
do
sleep 1
/bin/doit.sh
done