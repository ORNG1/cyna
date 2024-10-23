#################################################################
Installation d'Ansible sur une machine de type UNIX

#################################################################
Liens de documentation : 
Ansible installation : https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html#installation-guide
pipx : https://pipx.pypa.io/stable/
python : https://www.rosehosting.com/blog/how-to-install-python-on-ubuntu-24-04/

#################################################################
VM UNIX Ubuntu

Description:    Ubuntu 24.04.1 LTS
Release:        24.04
Codename:       noble

#################################################################
Documentation : 

## Mettre à jour les packets et repositories de sources
sudo apt update && sudo apt upgrade

## Installer python et l'ajouter au PATH de l'OS pour que les commandes soient reconnues de n'importe où
sudo apt install python3

## Verifier que Python est bien installé. Affiche la version de python installée
python3 -V

## Installer pipx pour installer Ansible par la suite. Ajout de pipx au PATH de l'OS
sudo apt install pipx
pipx ensurepath

## Installer Ansible (full package) en utilisant pipx 
pipx install --include-deps ansible

## Verifier qu'Ansible a bien été installé
ansible --version