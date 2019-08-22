set -x 
docker run --name gitsync-$(basename $(pwd)) --restart=always -v "$(echo ~)/.gitconfig:/etc/gitconfig" -v "$(echo ~)/.ssh/:/root/.ssh" -v "$(pwd):/git" ninaaaaaaaa/gitsync:latest

