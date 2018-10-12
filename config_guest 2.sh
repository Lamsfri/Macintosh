###############################################
# Script permettant de copier l'environnement #
#      de l'utilisateur guest sur Mac         #
###############################################
echo "Assurez vous d'avoir fermé toutes les fenetres de la session invitée avant de continuer..."

# Suppression des dossiers à copier 
rm -r /System/Library/User\ Template/French.lproj/Library
rm -r /System/Library/User\ Template/French.lproj/Desktop
echo "dossier supprimés"
# Copier les dossiers Library et Desktop dans le French.lproj
cp -R /Users/Guest/Library /System/Library/User\ Template/French.lproj/Library
cp -R  /Users/Guest/Desktop /System/Library/User\ Template/French.lproj/Desktop
echo "dossiers copiés"
# Supprimer tous les fichiers du Keychains
cd /System/Library/User\ Template/French.lproj/Library/Keychains
rm -r *
rm -r .f*
echo "keychains vidé"
echo "Vous pouvez vous déconnecter"
