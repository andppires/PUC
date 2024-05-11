# PUC

**Descrição:**
Este projeto consiste em uma aplicação simples em Flask que exibe uma mensagem de saudação. A aplicação serve como um exemplo básico de como criar um servidor web usando Flask e fornecer uma resposta simples a uma solicitação de página web.

**Configuração e Execução**

**Pré-requisitos:**
- Docker
- Acesso à Internet

**Instalação:**
Clone o repositório:

git clone https://github.com/SEU_USUARIO/SEU_REPOSITORIO.git

arduino
Copy code

Navegue até o diretório do projeto:

cd NOME_DO_DIRETORIO

less
Copy code

**Execução com Docker:**

Se você preferir usar Docker para executar a aplicação, siga estas etapas:

1. Construa a imagem Docker:

docker build -t puc_producao .

markdown
Copy code

2. Inicie um contêiner Docker:

docker run -d -p 5000:5000 puc_producao

less
Copy code

A aplicação estará acessível em http://localhost:5000/.

**Execução sem Docker:**

Se preferir não usar Docker, siga estas etapas:

1. Crie um ambiente virtual:

python -m venv venv

yaml
Copy code

2. Ative o ambiente virtual:

No Windows:

venv\Scripts\activate

yaml
Copy code

No macOS e Linux:

source venv/bin/activate

csharp
Copy code

3. Instale as dependências do projeto:

pip install -r requirements.txt

css
Copy code

4. Execute a aplicação:

python app.py

bash
Copy code

Abra um navegador e acesse o seguinte URL: http://localhost:5000

**Testes Automatizados:**
Os testes automatizados são executados automaticamente sempre que um novo código é enviado para o repositório. Para executar os testes manualmente, use o seguinte comando:

pytest

less
Copy code

**Pipeline de CI/CD:**
A pipeline de CI/CD foi configurada usando GitHub Actions. Sempre que um novo código é enviado para o branch principal (main), a pipeline é acionada. A pipeline realiza as seguintes etapas:

- Checkout do Repositório: Clona o repositório para a máquina virtual de execução.
- Configuração do Ambiente: Configura um ambiente Python com a versão especificada.
- Instalação de Dependências: Instala todas as dependências do projeto listadas no arquivo requirements.txt.
- Execução dos Testes: Executa os testes automatizados usando o pytest.
- Deploy da Aplicação: Realiza o deploy da aplicação em um ambiente de produção. (Substitua esta parte pelo método específico de deploy utilizado.)

**Contribuição:**
Contribuições são bem-vindas! Para contribuir com este projeto, siga estas etapas:

1. Faça um fork do projeto
2. Crie uma nova branch (git checkout -b feature/nova-feature)
3. Faça commit das suas alterações (git commit -am 'Adicione uma nova feature')
4. Faça push para a branch (git push origin feature/nova-feature)
5. Envie um pull request

**Licença:**
[Inclua aqui a licença do seu projeto, se houver.]
Certifique-se de substituir SEU_USUARIO e SEU_REPOSITORIO pelos valores corretos do seu repositório.