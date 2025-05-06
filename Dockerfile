# Usa a imagem oficial do Node.js 23
FROM node:23-alpine

# Define o diretório de trabalho no container
WORKDIR /app

# Copia os arquivos de dependência
COPY package*.json ./

# Instala as dependências
RUN npm install

# Copia o restante da aplicação
COPY . .

# Expõe a porta da aplicação
EXPOSE 3000

# Comando para iniciar a API
CMD ["node", "index.js"]
