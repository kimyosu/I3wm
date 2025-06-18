#!/bin/bash





#!/bin/bash

# Intervalo entre lembretes em segundos (60 minutos = 3600s)
INTERVALO=3600

# Mensagem da notificação
MENSAGEM="Ei, hora de beber água!"

# Título da notificação
TITULO="Hidratação LOL"

# Loop infinito: roda até você matar o processo (Ctrl+C ou pkill)
while true; do
    # Envia a notificação
    notify-send "$TITULO" "$MENSAGEM"

    # Espera pelo intervalo definido
    sleep $INTERVALO
done


