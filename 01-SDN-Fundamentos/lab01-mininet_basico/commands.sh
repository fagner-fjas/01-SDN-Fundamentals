#!/usr/bin/env bash

# LAB 01 - Mininet Basics
# Mininet + Open vSwitch + OpenFlow 1.3

echo "======================================"
echo " LAB 01 - SDN Fundamentals"
echo "======================================"

echo
echo "1. Limpando configurações anteriores..."
sudo mn -c

echo
echo "2. Iniciando Mininet..."
echo
echo "Depois que aparecer 'mininet>', execute:"
echo
echo "  nodes"
echo "  net"
echo "  dump"
echo "  pingall"
echo "  h1 ping -c 3 h2"
echo
echo "Em outro terminal execute:"
echo
echo "  sudo ovs-vsctl show"
echo "  sudo ovs-ofctl -O OpenFlow13 show s1"
echo "  sudo ovs-ofctl -O OpenFlow13 dump-flows s1"
echo

sudo mn \
  --topo single,3 \
  --mac \
  --switch ovsk,protocols=OpenFlow13 \
  --controller default
