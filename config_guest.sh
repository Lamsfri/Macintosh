###############################################
# Script permettant de copier l'environnement #
#      de l'utilisateur guest sur Mac         #
###############################################

if [ $USER != "root" ]
then
  echo "Only root user can run this script."
  exit 2
else
  # Suppression des dossiers à copier
  rm -r /System/Library/User\ Template/French.lproj/Library
  rm -r /System/Library/User\ Template/French.lproj/Desktop
  echo "suppression des dossiers effectuée"

  # Copier les dossiers Library et Desktop dans le French.lproj
  cp -R /Users/Guest/Library /System/Library/User\ Template/French.lproj/Library
  cp -R  /Users/Guest/Desktop /System/Library/User\ Template/French.lproj/Desktop
  echo "copie des dossiers effectuée"

  # Supprimer tous les fichiers du Keychains
  cd /System/Library/User\ Template/French.lproj/Library/Keychains
  rm -r *
  rm -r .f*
  echo "keychains vidé"
  echo "FIN"
fi
exit 0
