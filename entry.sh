#!/bin/bash

echo "172.17.0.1 alfresco.piratengericht.ch" >> /etc/hosts
echo "172.17.0.1 otrs.piratengericht.ch" >> /etc/hosts
cd /DataProcessing/Otrs2Alfresco/Otrs2Alfresco/bin/Debug/
mono Otrs2Alfresco.exe

