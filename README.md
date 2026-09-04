Laboratório Terraform + Docker
📌 Visão geral

Neste laboratório, será utilizado o Terraform para provisionar e gerenciar um ambiente Docker, utilizando o Docker Provider.

A infraestrutura será composta por:

Uma rede Docker;
Um container Web baseado em Nginx;
Um container Redis;
Uma porta HTTP publicada para acesso ao serviço Web;
Recursos declarados em arquivos Terraform;
Documentação técnica;
Histórico versionado utilizando Git.
🏗️ Arquitetura

A estrutura do ambiente pode ser representada da seguinte forma:

Terraform
    │
    ▼
Provider Docker
    │
    ├───────────────┐
    ▼               ▼
 Network        Containers
                    │
             ┌──────┴──────┐
             ▼             ▼
           Nginx          Redis

Fluxo de comunicação
                    COMPUTADOR
                         │
                         │ HTTP :8080
                         ▼
                 ┌─────────────────┐
                 │      NGINX      │
                 │  Web Container  │
                 └────────┬────────┘
                          │
                    Rede AlphaTech
                          │
                          ▼
                 ┌─────────────────┐
                 │      REDIS      │
                 │                 │
                 └─────────────────┘


O acesso ao serviço Web ocorre através da porta 8080 do computador, que encaminha as requisições para o container Nginx.

O Nginx e o Redis estão conectados por meio da rede Docker AlphaTech, permitindo a comunicação entre os containers.

🛠️ Tecnologias utilizadas
Terraform — Provisionamento e gerenciamento da infraestrutura;
Docker — Plataforma de containers;
Nginx — Servidor Web;
Redis — Banco de dados em memória;
Git — Controle de versão.
🚀 Execução do Terraform

Após configurar os arquivos do projeto, execute os comandos abaixo na ordem apresentada.

1. Inicializar o Terraform

Inicializa o diretório de trabalho e instala os providers necessários.

terraform init

2. Validar a configuração

Verifica se os arquivos de configuração do Terraform estão sintaticamente corretos.

terraform validate

3. Visualizar o plano de execução

Apresenta quais recursos serão criados, alterados ou removidos.

terraform plan

4. Aplicar a infraestrutura

Cria os recursos definidos nos arquivos Terraform.

terraform apply


Após a execução, o serviço Web poderá ser acessado através da porta:

http://localhost:8080

📂 Estrutura do projeto

Uma possível organização dos arquivos é:

.
├── main.tf
├── variables.tf
├── outputs.tf
├── README.md
└── .gitignore

📖 Objetivo do laboratório

O objetivo deste laboratório é praticar o uso do Terraform como ferramenta de Infrastructure as Code (IaC), utilizando o Docker como ambiente de infraestrutura.

Durante o laboratório, são abordados conceitos como:

Provisionamento de recursos com Terraform;
Utilização de providers;
Criação e configuração de redes Docker;
Gerenciamento de containers;
Publicação de portas;
Comunicação entre containers;
Validação e planejamento de infraestrutura;
Versionamento do código de infraestrutura com Git.

ACESSO:
http://localhost:8080/




