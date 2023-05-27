#!/bin/bash
#Renomeia uma pasta que tem fotos extensão .jpg
#coloca na frente do nome horiginal  a data
#Arquivo de conceito
PICTURES=$(ls *jpg)
DATE=$(date +%F)

for PICTURE in PICTURES
do
    echo "Remaining ${PICTURE} to ${DATE} -${PICTURE}"
    mv ${PICTURE} ${DATE}-${PICTURE}
