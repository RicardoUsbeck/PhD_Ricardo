#!/bin/bash

ssh RicardoUsbeck@titan.informatik.uni-leipzig.de
cd logs/
rm -rf *
mkdir tomcat7
sudo cp -r /var/log/tomcat7/. tomcat7/.
mkdir tomcat6
sudo cp -r /var/log/tomcat6/. tomcat6/.

scp -r RicardoUsbeck@titan.informatik.uni-leipzig.de:/home/RicardoUsbeck/logs/tomcat6/*.gz logs/
scp -r RicardoUsbeck@titan.informatik.uni-leipzig.de:/home/RicardoUsbeck/logs/tomcat7/*.gz logs/


for f in logs/*.gz
do
 gzcat $f| grep 'AGDISTIS\t' | awk '{print $2}' >> calldate_en.txt
 gzcat $f| grep 'AGDISTIS_ZH\t' | awk '{print $2}' >> calldate_zh.txt
 gzcat $f| grep 'AGDISTIS_DE\t' | awk '{print $2}' >> calldate_de.txt
done

wc -l calldate_en.txt
wc -l calldate_de.txt
wc -l calldate_zh.txt

