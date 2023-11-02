#commande pour afficher le nombre de connexions de l'utilisateur
nombre_connexions_vm="sudo last"

#creer le fichier number_connection-(Date:jj-mm-aaaa-HH:MM)
date=$(date "+%d-%m-%Y-%H:%M")
nom_fichier="number_connection-$date"

#Copie du fichier nombre de connexions puis l'envoyer vers nom_fichier
  echo "$nombre_connexions_vm" > "$nom_fichier"

#Permet d'archiver le fichier en .tar

  mkdir -p /job8/backup

  tar -czf "number_connection-${date}.tar/backup" 

