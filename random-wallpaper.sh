#!/usr/bin/env bash

# Requer swaybg

WALLPAPER_DIR="/usr/share/wallpapers/garuda-wallpapers"

# Seleciona uma imagem aleatória (.jpg ou .png)
IMAGE=$(find "$WALLPAPER_DIR" -type f $$   -name '*.jpg' -o -name '*.png'   $$ | shuf -n 1)

if [ -z "$IMAGE" ]; then
    echo "Erro: Nenhuma imagem encontrada em $WALLPAPER_DIR"
    exit 1
fi

# Mata instâncias antigas do swaybg (opcional, mas evita sobreposição)
pkill swaybg 2>/dev/null

# Aplica o wallpaper
swaybg -i "$IMAGE" -m fill &
