#!/bin/bash

echo "###### Downloading latest version of Docker Compose ######"
sudo curl -L "https://github.com/docker/compose/releases/download/1.23.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

echo "###### Applying executable permission to binary ######"
sudo chmod +x /usr/local/bin/docker-compose

echo "###### Installing bash completion"
sudo curl -L https://raw.githubusercontent.com/docker/compose/1.23.1/contrib/completion/bash/docker-compose -o /etc/bash_completion.d/docker-compose

echo "##### Checking version ######"
docker-compose --version
