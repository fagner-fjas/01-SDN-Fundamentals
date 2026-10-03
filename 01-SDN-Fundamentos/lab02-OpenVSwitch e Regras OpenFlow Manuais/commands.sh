#!/usr/bin/env bash

# Lab 02 - Open vSwitch e Regras OpenFlow

echo "======================================"
echo " LAB 02 - Open vSwitch e Regras OpenFlow"
echo "======================================"

echo
echo "1. Limpando configurações anteriores..."
sudo mn -c

echo 
echo "2. Iniciando topologia no Mininet"
echo 
echo "Depois siga os passos do README."

sudo mn \
	--topo single,3 \
	--mac \
	--switch ovsk,protocol=OpenFlow13 \
	--controller default
	


