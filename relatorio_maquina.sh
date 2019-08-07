#!/bin/bash

#########################################################
##
## Autor: Fernando Lino ( fernandolinox@gmail.com )
## Data: 07/08/2019
## 
## Descricao: O script gera um relatorio com as principais
##            informacoes da maquina
## 
## Uso: relatorio_maquina.sh
##
#########################################################

KERNEL=$(uname -r)
HOSTNAME=$(hostname)
CPUNO=$(cat /proc/cpuinfo | grep "model name" | wc -l)
CPUMODEL=$(cat /proc/cpuinfo | grep "model name" | head -n1 | cut -c14-)
MEMTOTAL=$(expr $(cat /proc/meminfo | grep MemTotal | tr -d ' ' | cut -d: -f2 | tr -d kB) / 1024 ) # Em MB
FILESYS=$(df -h | egrep -v '(tmpfs|udev)')
UPTIME=$(uptime -s)

clear
echo "================================================================"
echo "Relatório da máquina: $HOSTNAME"
echo "Data/hora: $(date)"
echo "================================================================"
echo
echo "Máquina ativa desde: $UPTIME"
echo
echo "Versão do kernel: $KERNEL"
echo
echo "CPUs"
echo "Qtde de CPU/Core: $CPUNO"
echo "Modelo da CPU: $CPUMODEL"
echo
echo "Memória Total: $MEMTOTAL MB"
echo
echo "Partições"
echo
echo "$FILESYS"