#!/bin/bash

function p_file(){
DIR="ls ./*.sh" ###listar todos os arquivos que tem a extensão #sh
for i in $DIR
do
echo $i
done

}

p_file