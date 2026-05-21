# Instalação e Configuração: Stirling-PDF no Linux Mint 22

O usuário é admin e a senha é admin1234

Este guia descreve o passo a passo para instalar o Docker, configurar o Stirling-PDF e criar um atalho no sistema para execução simplificada pelo usuário final.

## 📋 Requisitos de Sistema
- **SO:** Linux Mint 22 (ou superior)
- **RAM:** 8GB (Recomendado)
- **Espaço em disco:** ~2GB para imagens Docker

---

## 1. Instalação do Docker
Execute os comandos abaixo no terminal para instalar o motor do Docker e o Docker Compose:

```bash
# Atualizar repositórios e instalar dependências
sudo apt update
sudo apt install ca-certificates curl gnupg -y

# Adicionar chave GPG oficial do Docker
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL [https://download.docker.com/linux/ubuntu/gpg](https://download.docker.com/linux/ubuntu/gpg) | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg

# Adicionar repositório oficial (Baseado no Ubuntu 24.04 Noble)
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] [https://download.docker.com/linux/ubuntu](https://download.docker.com/linux/ubuntu) noble stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Instalar pacotes
sudo apt update
sudo apt install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y
# SE NECESSÁRIO dar permissão para o usuário local usar o docker
sudo usermod -aG docker $USER
# SE NECESSÁRIO criar atalho
~/.local/share/applications/stirling.desktop
# ADICIONAR ATALHO
[Desktop Entry]
Name=Stirling PDF
Comment=Gerenciador de PDF
Exec=/home/SEU_USUARIO/stirling-pdf/start_stirling.sh
Icon=pdf
Terminal=false
Type=Application
Categories=Office;Utility;



sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg

echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu $(. /etc/os-release && echo "$UBUNTU_CODENAME") stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt update
sudo apt install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
