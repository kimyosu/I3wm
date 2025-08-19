#!/bin/bash
# Mata todas as barras de forma limpa
killall polybar &
# Espera um pouco para garantir que fecharam
sleep 1

# Roda as barras de novo
polybar example &
polybar second &

