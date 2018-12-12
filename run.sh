#!/bin/bash

docker stop otrs2alfresco
docker rm otrs2alfresco
docker run -d \
--device /dev/fuse --cap-add SYS_ADMIN \
-v /srv/otrs2alfresco/config.xml:/DataProcessing/Otrs2Alfresco/Otrs2Alfresco/bin/Debug/config.xml \
-v /srv/otrs2alfresco/davfs2.secrets:/etc/davfs2/secrets \
-v /srv/otrs2alfresco/log:/var/log/o2a \
--name otrs2alfresco \
exception/otrs2alfresco
