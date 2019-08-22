
#chokidar "*" -i .git -i .gitsync  -c ./doit.sh
while true
do
sleep 1
./doit.sh
done
