#!/bin/bash

#########################################################
##
## Autor: Fernando Lino ( fernandolinox@gmail.com )
## Data: 07/08/2019
## 
## Descricao: O script soma dois valores inseridos
##            pelo usuario
## 
## Uso: soma_valores.sh
##
#########################################################

read -p "Informe o primeiro valor: " VALOR1
read -p "Informe o segundo valor:" VALOR2

echo
echo "A Soma de $VALOR1 + $VALOR2 é $(expr $VALOR1 + $VALOR2)"
