#!/usr/bin/env bash
# Fábrica de Video — instalador para Mac y Linux
# Uso:  bash instalar.sh            (instala en ~/.claude/skills)
# Prueba sin tocar tu equipo:  bash instalar.sh /ruta/de/prueba
set -e
AQUI="$(cd "$(dirname "$0")" && pwd)"
DESTINO="${1:-$HOME/.claude/skills}"
ORIGEN="$AQUI/skills"
if [ ! -d "$ORIGEN" ]; then echo "No encuentro la carpeta 'skills' junto a este archivo. Descomprime el ZIP completo y vuelve a intentar."; exit 1; fi
echo; echo "Fábrica de Video $(head -n1 "$AQUI/VERSION" 2>/dev/null)"
echo "Se copiarán las skills en: $DESTINO"
mkdir -p "$DESTINO"
STAMP="$(date +%Y%m%d-%H%M%S)"
N=0; B=0
for d in "$ORIGEN"/*/; do
  nombre="$(basename "$d")"
  dest="$DESTINO/$nombre"
  if [ -e "$dest" ]; then BAK="$(dirname "$DESTINO")/skills-respaldo"; mkdir -p "$BAK"; mv "$dest" "$BAK/$nombre-$STAMP"; B=$((B+1)); echo "  Ya tenías '$nombre': la versión anterior quedó en $BAK/$nombre-$STAMP"; fi
  cp -R "$d" "$dest"; N=$((N+1)); echo "  ✔ $nombre"
done
[ -d "$AQUI/ejemplos" ] && cp -R "$AQUI/ejemplos" "$DESTINO/fabrica-de-video/ejemplos"
echo; echo "Listo: $N skills instaladas ($B respaldadas)."
echo
echo "Siguiente paso:"
echo "  1. Crea una carpeta 'Reels con Claude' en Documentos."
echo "  2. Abre Claude Code dentro de esa carpeta."
echo "  3. Escribe:  Quiero empezar con la Fábrica de Video"
echo; echo "Guía paso a paso: ver LEEME.md"
