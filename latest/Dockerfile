FROM hcsoftech/crashplan:v3.7.0

MAINTAINER HC Softech Inc <hcsoftech@gmail.com>

RUN apt-get -y update && apt-get -y dist-upgrade && apt-get clean
RUN sed -i -r s/dataDeDupAutoMaxFileSizeForWan\>[0-9]+\</dataDeDupAutoMaxFileSizeForWan\>1\</g /usr/local/crashplan/conf/my.service.xml
RUN sed -i s/dataDeDuplication\>AUTOMATIC\</dataDeDuplication\>MINIMUM\</g /usr/local/crashplan/conf/my.service.xml
RUN sed -i s/-Xmx1024m/-Xmx2048m/ /usr/local/crashplan/bin/run.conf
RUN sed -i s/-Xmx512m/-Xmx2048m/ /usr/local/crashplan/bin/run.conf
