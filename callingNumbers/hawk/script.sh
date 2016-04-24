!#/bin/bash
wget http://139.18.2.164/rusbeck/hawk/hawk_07012015_11172015
scp RicardoUsbeck@titan.informatik.uni-leipzig.de:/home/RicardoUsbeck/hawk/log.out .
grep "<Question:" log.out | wc -l 
grep "<Question:" hawk_07012015_11172015 | wc -l 
