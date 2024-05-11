# Use uma imagem base do Python
FROM python:3.11

# Define o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copia os arquivos de código para o contêiner
COPY . /app

# Instala as dependências
RUN pip install -r requirements.txt

# Comando para executar a aplicação quando o contêiner for iniciado
CMD ["python", "app.py"]