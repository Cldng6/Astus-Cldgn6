#!/bin/bash

# Demande confirmation avant de continuer
echo "ATTENTION: Ce script va réinitialiser les paramètres utilisateur et remettre les paquets système à leur état par défaut."
read -p "Es-tu sûr de vouloir continuer ? (y/n): " confirmation
if [[ "$confirmation" != "y" ]]; then
    echo "Annulation du processus."
    exit 1
fi

# Suppression des configurations utilisateurs
echo "Suppression des configurations utilisateurs..."
rm -rf ~/.config
rm -rf ~/.local
rm -rf ~/.cache
echo "Configurations utilisateur supprimées."

# Réinstallation des paquets système de base
echo "Réinstallation des paquets système (ubuntu-desktop)..."
sudo apt-get install --reinstall ubuntu-desktop -y

# Suppression des paquets inutiles et non installés
echo "Suppression des paquets non nécessaires..."
sudo apt-get purge $(dpkg --get-selections | grep -v deinstall | cut -f1) -y

# Nettoyage des paquets inutiles
echo "Nettoyage des paquets inutiles..."
sudo apt-get autoremove -y

echo "Réinitialisation terminée. Le système a été réinitialisé avec les paramètres par défaut."
