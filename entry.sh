#!/bin/bash

echo "172.17.0.1 alfresco.piraten-bsg.de" >> /etc/hosts
echo "172.17.0.1 otrs.piraten-bsg.de" >> /etc/hosts
chmod og-rwx /etc/davfs2/secrets
mount -t davfs -o noexec https://cloud.piraten-bsg.de/remote.php/dav/files/backend/ /mnt/bsg
cd /DataProcessing/Otrs2Alfresco/Otrs2Alfresco/bin/Debug/
mono Otrs2Alfresco.exe

