#!/bin/bash

#######################################
#
# PrimeiroScript.sh - Script de Exemplo do Curso
#
# Autor: Ricardo Prudenciato (rprudenciato@gmail.com)
# Data Criação: DD/MM/YYYY
#
# Descrição: Script de exemplo que le data e hora atual e exibe a lista de alunos
#
# Exemplo de uso: ./PrimeiroScript.sh
#
# Alteracoes
#	Dia X - Inclusao da Função de ordenacao
#	Dia Y - Correcao da Função de leitura
#
################################################

DATAHORA=$(date +%H:%M)
ARQALUNOS="/workspaces/SheellScript/arquivos/alunos2.txt"

###VARIAVEL QUE TENHA O NOME DO LOG QUE A GENTE QUER
LOG="/workspaces/SheellScript/Script/log_interno.out"


exec 1>> >(tee -a "$LOG")
exec 2>&1

# Funcao de leitura da data e hora

echo "$(date) - Iniciando o Script..." >> $LOG

clear
echo "===== Meu Primeiro Script ======="
echo 
echo "Exibir data e hora atual: $DATAHORA"

# Area de leitura da lista de alunos
echo "================================="
echo "Listagem dos Alunos: "
sort $ARQALUNOS | tee -a $LOG

DATAHORA=$(date +%H)
echo "================================="
echo "Nova Hora Atual: $DATAHORA"

echo "$(date) - Fim do Script..." >> $LOG
