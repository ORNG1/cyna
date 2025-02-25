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

