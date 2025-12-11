#!/bin/bash
# Script de surveillance système
# Usage: ./monitor.sh

function show_cpu {
    echo "--- CPU ---"
    echo "Load average des 1, 5 et 15 dernières minutes : "
    uptime | awk -F'load average:' '{ print $2 }'
}

function show_ram {
    echo "--- RAM ---"
    free -h
}

function show_disk {
    echo "--- DISK ---"
    echo "Espace utilisé sur la partition principale : "
    df -h / | awk 'NR==2 {print "Utilisé: " $3 " / Libre: " $4}'
}

show_cpu
show_ram
show_disk
