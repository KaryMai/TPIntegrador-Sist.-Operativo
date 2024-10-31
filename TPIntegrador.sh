
#!/bin/bash

# Colores para los mensajes
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # Sin color

# Función para respaldar directorios
respaldo_directorio() {
    echo -e "${YELLOW}Introduce el directorio a respaldar:${NC}"
    read dir
    echo -e "${YELLOW}Introduce el nombre del archivo de respaldo (sin extensión):${NC}"
    read backup_name
    tar -czf "$backup_name.tar.gz" "$dir"
    echo -e "${GREEN}Respaldo completado: $backup_name.tar.gz${NC}"

    # Gestionar eliminación de backups antiguos (más de 30 días)
    find . -name "*.tar.gz" -mtime +30 -exec rm {} \;
    echo -e "${GREEN}Backups antiguos eliminados.${NC}"
}

# Función para generar informe de recursos del sistema
informe_recursos() {
    echo -e "${YELLOW}Generando informe de recursos...${NC}"
    log_file="reporte_recursos_$(date +%F).log"
    echo "Uso de CPU:" > "$log_file"
    top -b -n1 | grep "Cpu(s)" >> "$log_file"
    echo "" >> "$log_file"
    
    echo "Uso de Memoria:" >> "$log_file"
    free -h >> "$log_file"
    echo "" >> "$log_file"

    echo "Espacio en disco:" >> "$log_file"
    df -h >> "$log_file"

    echo -e "${GREEN}Informe generado: $log_file${NC}"
}



# Función para realizar actualizaciones automáticas
actualizar_sistema() {
    echo -e "${YELLOW}Verificando actualizaciones...${NC}"
    sudo apt update
    sudo apt upgrade -y
    echo -e "${GREEN}Actualización completada.${NC}"
}

# Función para limpiar el sistema
limpiar_sistema() {
    echo -e "${YELLOW}Eliminando archivos temporales y caché...${NC}"
    sudo apt autoremove -y
    sudo apt clean
    echo -e "${GREEN}Limpieza completada.${NC}"
}



# Función para mostrar el menú
mostrar_menu() {
    echo -e "${BLUE}======================================${NC}"
    echo -e "${BLUE}      Menú de Automatización           ${NC}"
    echo -e "${BLUE}======================================${NC}"
    echo -e "${YELLOW}1) Respaldo de directorios${NC}"
    echo -e "${YELLOW}2) Informe de recursos del sistema${NC}"
    echo -e "${YELLOW}3) Actualizaciones automáticas${NC}"
    echo -e "${YELLOW}4) Limpieza del sistema${NC}"
    echo -e "${YELLOW}5) Salir${NC}"
    echo -e "${BLUE}======================================${NC}"
}

# Loop del menú
while true; do
    mostrar_menu
    echo -e "${YELLOW}Selecciona una opción:${NC}"
    read opcion
    case $opcion in
        1) respaldo_directorio ;;
        2) informe_recursos ;;
        3) actualizar_sistema ;;
        4) limpiar_sistema ;;
        5) echo -e "${GREEN}Saliendo...${NC}" ; exit ;;
        *) echo -e "${RED}Opción no válida${NC}" ;;
    esac
    echo -e "${BLUE}Presiona Enter para continuar...${NC}"
    read
done
