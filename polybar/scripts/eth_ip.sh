#!/bin/sh

# Script para ser na polybar.
# Mostra o endereço ip da interface tun0.

IFACE=$(ip addr show enp22s0 2>/dev/null| grep "inet " | cut -d " " -f 6 | cut -d "/" -f 1)

if [ "$IFACE" = "" ];then
    echo ""
else
    echo "%{F#00B7FF}Eth %{F#FFFFFF}$IFACE"
fi