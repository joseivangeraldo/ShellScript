#!/bin/bash

cat script.txt
sleep 10
if [ $? ]; then
    echo "Nao deu erro"
else
    echo "deu erro"
fi