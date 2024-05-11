# Use uma imagem base do Python
FROM python:3.11

# Instalação do Node.js manualmente
RUN apt-get update && \
    apt-get install -y curl && \
    curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && \
    apt-get install -y nodejs

# Define o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copia os arquivos de código para o contêiner
COPY . /app

# Instala as dependências
RUN pip install --no-cache-dir -r requirements.txt

# Comando para executar a aplicação quando o contêiner for iniciado
CMD ["python", "app.py"]