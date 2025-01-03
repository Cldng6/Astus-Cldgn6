#!/bin/bash

# Message d'avertissement
echo "ATTENTION: Ce script va effectuer des modifications importantes sur votre système."
echo "Il supprimera certaines configurations et réinstallera des paquets système."
echo "Assurez-vous d'avoir sauvegardé vos données importantes avant de continuer."

# Demander une confirmation avant d'exécuter
read -p "Êtes-vous sûr de vouloir continuer ? (y/n) : " confirmation
if [[ "$confirmation" != "y" ]]; then
    echo "Annulation du processus."
    exit 1
fi

# Si la confirmation est "y", continuer l'exécution du script
echo "Exécution du script en cours..."

# Ajouter ici les commandes que tu veux exécuter après la confirmation
# Exemple : suppression des fichiers de configuration
# rm -rf ~/.config ~/.local ~/.cache

# Réinstaller des paquets ou toute autre commande
# sudo apt-get install --reinstall ubuntu-desktop -y

echo "Le script a été exécuté avec succès."
