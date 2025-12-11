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
    # TODO
}

function show_disk {
    echo "--- DISK ---"
    # TODO
}

# Appel des fonctions (à décommenter au fur et à mesure)
show_cpu
# show_ram
# show_disk
