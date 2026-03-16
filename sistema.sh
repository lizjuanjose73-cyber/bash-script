#!/bin/bash

# Bucle infinito para que el programa no se cierre solo
while true; do
    # Limpia la pantalla en cada repetición para que se vea ordenado
    clear
    echo "=========================================="
    echo "       MONITOR DE SISTEMA - DASHBOARD     "
    echo "=========================================="
    echo "1. Uso de CPU"
    echo "2. Uso de Memoria RAM"
    echo "3. Procesos Activos (Top 10)"
    echo "4. Espacio en Disco"
    echo "5. Salir"
    echo "=========================================="
    
    read -p "Seleccione una opción [1-5]: " op
    echo ""

    case $op in
        1)
            echo "--- ESTADÍSTICAS DE CPU ---"
            top -bn1 | grep "Cpu(s)"
            ;;
        2)
            echo "--- ESTADÍSTICAS DE RAM ---"
            free -h
            ;;
        3)
            echo "--- TOP 10 PROCESOS (POR MEMORIA) ---"
            ps aux --sort=-%mem | head -n 11
            ;;
        4)
            echo "--- PARTICIONES Y ESPACIO ---"
            df -h
            ;;
        5)
            echo "Saliendo del monitor... ¡Hasta pronto!"
            exit 0
            ;;
        *)
            echo "Error: Opción no válida."
            ;;
    esac

    # Pausa para que el usuario pueda leer el resultado antes de limpiar pantalla
    echo ""
    read -p "Presione [Enter] para volver al menú..."
done
