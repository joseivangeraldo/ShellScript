#!/bin/bash
########################################################################################
# Arquivo para automatizar funções do git commit                                       #
#									                                                   #	
# Nome: git_auto.sh							                                           #
#									                                                   #
# Autor: José Ivan G da Silva (ivan.geraldo@gmail.com)	                               #
# Data: 05/07/2023							                                           #
#									                                                   #
# Descrição: Ao terminar a fase do projeto executar na pasta raiz do diretorio,        #
# Será excuta a adição o comitt com o comentario da data da alteração,horas e minutos  #
#				                                                     				   #
# Uso: ./git_auto.sh 						                                           #
#									                                                   #
########################################################################################
NOW="$(date +"%m-%d-%Y %H:%m")"

$(git add .)
sleep 3
if [ $? -eq 0 ] ; then
    echo "Added to git"
else
    # do some repair actions or bail-out with
    echo "ERROR NESTA PARTE"
    exit 1
fi
$(git commit -a -m "$NOW")
sleep 3
$(git push)
