#!/bin/bash

localDeploymentPath=$(docker inspect amd64_luftdatenboxstart-html | grep "Mountpoint" | awk -F'"' '{print $4}')
echo $localDeploymentPath
# copy local files aka deplay
rm -r $localDeploymentPath/