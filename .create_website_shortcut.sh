#!/bin/bash

# Demander le nom du site
read -p "Entrez le nom du site : " NAME

# Remplacer les espaces par des underscores pour le nom du fichier
FILENAME=$(echo "$NAME" | tr ' ' '_').desktop

# Demander l'URL du site
read -p "Entrez l'URL du site : " URL

# Chemin du bureau
DESKTOP_DIR=~/Bureau

# Emplacement du fichier .desktop sur le bureau
DESKTOP_FILE=$DESKTOP_DIR/$FILENAME

# Commentaire par défaut
COMMENT="Accéder à $NAME"

# Icône par défaut
ICON="web-browser"

# Créer le fichier .desktop avec le contenu approprié
cat <<EOF > $DESKTOP_FILE
[Desktop Entry]
Version=1.0
Name=$NAME
Comment=$COMMENT
Exec=xdg-open $URL
Icon=$ICON
Terminal=false
Type=Application
Categories=Network;WebBrowser;
EOF

# Rendre le fichier .desktop exécutable
chmod +x $DESKTOP_FILE

# Marquer le fichier .desktop comme approuvé
gio set $DESKTOP_FILE metadata::trusted true

# Afficher le chemin du fichier .desktop
echo "Le raccourci a été créé avec succès sur le bureau : $DESKTOP_FILE"
