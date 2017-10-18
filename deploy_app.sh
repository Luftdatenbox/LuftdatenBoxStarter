#!/bin/bash

localDeploymentPath=$(docker inspect amd64_luftdatenboxstart-html | grep "Mountpoint" | awk -F'"' '{print $4}')
echo $localDeploymentPath
# copy local files aka deplay
rsync -avz --progress ./ $localDeploymentPath   --exclude=amd64 \
                                                --exclude=arm32v7 \
                                                --exclude=deploy_app.sh --exclude=undeploy_app.sh --exclude=.idea --exclude=.git --exclude=.gitignore --exclude=Makfile