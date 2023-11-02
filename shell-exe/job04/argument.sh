if [ $# -ne 2 ]; then
    echo "Usage: $0 inspiré.txt droits.txt"
    exit 1
fi

nouveauFichier=$1
contenuFichier=$2

if [ ! -f "$droits.txt" ]; then
    echo "Le fichier '$droits.txt' n'existe pas."
    exit 1
fi

cat "$droits.txt" > "$inspiré.txt"

if [ $? -eq 0 ]; then
    echo "Le contenu de '$droits.txt' a été copié avec succès dans 'inspiré.txt'."
else
    echo "Une erreur s'est produite lors de la copie."
fi
