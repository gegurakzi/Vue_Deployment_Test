#!/bin/bash

set -e

sudo docker build -t node:custom ~/server-test/app
sudo docker run -d -it -u root -p 8080:8080 --name app_container node:custom /bin/bash