#!/bin/bash

# Bash-Skript für Git-Operationen

# Überprüfen Sie, ob ein Kommentar als Argument übergeben wurde
if [ "$#" -ne 1 ]; then
    echo "Fehler: Kommentar als Argument erforderlich"
    exit 1
fi

# Kommentar aus dem Argument holen
COMMENT="$1"

# Führen Sie die Git-Befehle aus
git add .
git commit -m "$COMMENT"
git push

echo "Git-Vorgänge erfolgreich abgeschlossen."
