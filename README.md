# modulo-s3-terraform

### Lab
https://www.pluralsight.com/resources/blog/cloud/how-to-use-github-actions-to-automate-terraform

### Pré-requisitos
Então, primeiro você precisará destas três coisas configuradas e configuradas antes de poder usar GitHub Actions para automatizar o Terraform:

- [ ] CLI do Terraform baixado e instalado.
- [ ] Você precisará de uma conta AWS e terá uma chave de acesso e uma chave secreta da AWS, além de conceder ao usuário as permissões AmazonS3FullAccess IAM. Você também precisará criar um bucket S3 para armazenar remotamente o estado do Terraform.
-  Finalmente, você precisará configurar um repositório GitHub com a seguinte estrutura:

- [ ] Um diretório chamado src onde você armazenará o código do seu site.
- [ ] A . Diretório github no qual você criará um diretório de fluxos de trabalho e armazenará seus arquivos de configuração do GitHub Action.
- [ ] Um diretório terraform onde você armazenará seus arquivos de configuração do Terraform.
