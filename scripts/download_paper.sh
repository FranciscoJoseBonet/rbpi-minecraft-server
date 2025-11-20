#!/bin/bash

echo "Obteniendo última versión estable de Paper…"

VERSION=$(curl -s https://api.papermc.io/v2/projects/paper \
  | jq -r '.versions[]' \
  | grep -v "pre" \
  | grep -v "rc" \
  | sort -V \
  | tail -n 1)

echo "Última versión estable detectada: $VERSION"
echo "Buscando lista de builds…"

LATEST_BUILD=$(curl -s "https://api.papermc.io/v2/projects/paper/versions/$VERSION/builds" \
  | jq -r '.builds[-1].build')

echo "Build más reciente: $LATEST_BUILD"

FILE=$(curl -s "https://api.papermc.io/v2/projects/paper/versions/$VERSION/builds/$LATEST_BUILD" \
  | jq -r '.downloads.application.name')

echo "Descargando PaperMC $VERSION (build $LATEST_BUILD)…"

curl -Lo paper.jar \
"https://api.papermc.io/v2/projects/paper/versions/$VERSION/builds/$LATEST_BUILD/downloads/$FILE"

echo "Listo, señor Bonet. Archivo descargado como: paper.jar"
