#!/bin/bash

VERSION="1.20.1"

echo "Buscando build más reciente…"

LATEST_BUILD=$(curl -s https://api.papermc.io/v2/projects/paper/versions/$VERSION | jq -r '.builds[-1]')
FILE="paper-$VERSION-$LATEST_BUILD.jar"

echo "Descargando PaperMC $VERSION build $LATEST_BUILD…"

curl -Lo paper.jar \
"https://api.papermc.io/v2/projects/paper/versions/$VERSION/builds/$LATEST_BUILD/downloads/$FILE"

echo "Listo. Archivo: paper.jar"
