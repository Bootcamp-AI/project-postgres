#!/bin/bash

# Detener la ejecución si un comando falla
set -e

# Conectarse a la base de datos 'postgres' (la que se crea por defecto)
# y ejecutar comandos SQL para crear las nuevas bases de datos.
# Usamos 'psql' (el cliente de PostgreSQL).
# -U postgres: Usuario
# -d postgres: Base de datos a la que conectarse inicialmente
# -c: Comando SQL a ejecutar

echo "Creating DB studentdb..."
psql -U postgres -d postgres -c "CREATE DATABASE studentdb WITH ENCODING 'utf8' TEMPLATE template0;"

echo "Creating DB sparkifydb..."
psql -U postgres -d postgres -c "CREATE DATABASE sparkifydb WITH ENCODING 'utf8' TEMPLATE template0;"

echo "DBs created successfully."