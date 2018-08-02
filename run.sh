#!/bin/bash

docker stop otrs2alfresco
docker rm otrs2alfresco
docker run -it -v /srv/otrs2alfresco/config.xml:/DataProcessing/Otrs2Alfresco/Otrs2Alfresco/bin/Debug/config.xml -v /srv/otrs2alfresco/log:/var/log/o2a --name otrs2alfresco exception/otrs2alfresco
