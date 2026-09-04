Neste laboratório:
Terraform
    │
    ▼
Provider Docker
    │
    ├───────────────┐
    ▼               ▼
Network          Containers
                    │
             ┌──────┴──────┐
             ▼             ▼
           Nginx          Redis


O ambiente apresenta:
                    COMPUTADOR
                         │
                         │ HTTP :8080
                         ▼
                 ┌─────────────────┐
                 │  NGINX          │
                 │  Web Container  │
                 └────────┬────────┘
                          │
                    Rede AlphaTech
                          │
                          ▼
                 ┌─────────────────┐
                 │  REDIS          │
                 │                 │
                 └─────────────────┘


•	uma rede Docker;
•	um container Web baseado em Nginx;
•	um container Redis;
•	uma porta HTTP publicada para acesso ao serviço Web;
•	os recursos declarados em arquivos Terraform;
•	documentação técnica;
•	histórico versionado utilizando Git.


terraform init
terraform validate
terraform plan
terraform apply





ACESSO:
http://localhost:8080

Destruição:
terraform destroy
