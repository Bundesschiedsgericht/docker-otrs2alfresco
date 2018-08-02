FROM ubuntu:16.04
MAINTAINER Stefan Thoeni <stefan.thoeni@piratengericht.ch>

RUN echo "A1"
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
RUN echo "deb http://download.mono-project.com/repo/ubuntu stable-xenial main" | tee /etc/apt/sources.list.d/mono-official-stable.list
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y texlive-full texlive-xetex mono-complete wget vim git gnupg2

RUN cd /usr/share/fonts/truetype/ && mkdir aller && cd aller && wget https://www.fontsquirrel.com/fonts/download/Aller && mv Aller aller.zip && unzip aller.zip && fc-cache -f -v

RUN apt-get install -y libreoffice-common
RUN echo "U3"
RUN git clone https://github.com/Piratengericht/DataProcessing
RUN cd /DataProcessing/Otrs2Alfresco && xbuild Otrs2Alfresco.sln
COPY entry.sh /entry.sh

ENTRYPOINT ["/entry.sh"]
