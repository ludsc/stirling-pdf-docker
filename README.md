# Instalação e Configuração: Stirling-PDF no Linux Mint 22

Guia rápido para instalação de dependências, Docker e inicialização do Stirling-PDF.

## 🚀 Como Acessar
Após concluir os passos abaixo, o painel estará disponível em:
* **Endereço:** `http://localhost:8080/`
* **Usuário:** `admin`
* **Senha:** `admin1234`

---

## 🛠️ Passo a Passo

Execute os comandos abaixo no seu terminal para realizar a instalação completa:

### 1. Atualizar o sistema e instalar dependências
```bash
sudo apt update && sudo apt install ca-certificates curl gnupg git -y

curl -fsSL [https://get.docker.com](https://get.docker.com) -o get-docker.sh
sudo sh get-docker.sh
****
### Clonar o repositório e iniciar o stirling
# Clonar o repositório
git clone https://github.com/ludsc/stirling-pdf-docker.git

# Entrar na pasta
cd stirling-pdf-docker

# Iniciar o Stirling-PDF em segundo plano
docker compose up -d
