# Installation de Terraform sur une machine linux

Lien de la documentation : https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli

--------------------------------------------------------------------
VM Ubuntu

Description:    Ubuntu 24.04.2 LTS
Release:        24.04
Codename:       noble

--------------------------------------------------------------------
## Documentation : 

### Mettre à jour les packets et installer les packages qui vont vérifier la clé GPG de Hasicorp Terraform
```
sudo apt-get update && sudo apt-get install -y gnupg software-properties-common --allow-unauthenticated
```
### Installer la clé GPG
```
wget -O- https://apt.releases.hashicorp.com/gpg | \
gpg --dearmor | \
sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg > /dev/null
```

### Vérifier la clé GPG
```
gpg --no-default-keyring \
--keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg \
--fingerprint
```

### Ajouter le repository HashiCorp pour pouvoir installer Terraform
```
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] \
https://apt.releases.hashicorp.com $(lsb_release -cs) main" | \
sudo tee /etc/apt/sources.list.d/hashicorp.list
```

### Mettre à jour les packets et installer Terraform
```
sudo apt update

sudo apt-get install terraform
```
### Vérifier l'installation de Terraform
```
terraform -help
```

----------------------------------------------------------------
### Configuration du répertoire Terraform

Il faut créer un répertoire et l'initialiser pour Terraform. C'est dans ce dossier que les fichiers de déploiement Terraform se trouveront. Nous lancerons les commandes aussi depuis ici.

```
terraform init -upgrade
```
### Installation de Azure CLI

Documentation : https://learn.microsoft.com/en-us/cli/azure/install-azure-cli-linux?pivots=apt

Azure CLI est le package qui nous permettra de se connecter avec notre comtpte au ressources Azure.

### Mettre à jour les paquets et installer les dépendances
```
sudo apt-get update
sudo apt-get install apt-transport-https ca-certificates curl gnupg lsb-release
```
### Télécharger et installer la clé signée Microsoft
```
sudo mkdir -p /etc/apt/keyrings
curl -sLS https://packages.microsoft.com/keys/microsoft.asc |
  gpg --dearmor | sudo tee /etc/apt/keyrings/microsoft.gpg > /dev/null

sudo chmod go+r /etc/apt/keyrings/microsoft.gpg
```

### Ajouter le repo AzureCLI aux repo de la distribution
```
AZ_DIST=$(lsb_release -cs)
echo "Types: deb
URIs: https://packages.microsoft.com/repos/azure-cli/
Suites: ${AZ_DIST}
Components: main
Architectures: $(dpkg --print-architecture)
Signed-by: /etc/apt/keyrings/microsoft.gpg" | sudo tee /etc/apt/sources.list.d/azure-cli.sources
```

### Mettre à jour et installer AzureCLI
```
sudo apt-get update
sudo apt-get install azure-cli
```