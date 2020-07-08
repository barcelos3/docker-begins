# docker-begins
Dockerfile é um arquivo responsável por realizar a criação e construção de imagens no Docker, dentro dele são definidas instruções que o Docker deve seguir para conseguir realizar a criação de uma imagem. Essas instruções são interpretadas linha a linha pelo motor do Docker.

# Requisitos
- Computador com acesso a internet
- Docker last version
- Git instalado


# Clonar o diretório do repositório

git clone https://github.com/barcelos3/docker-begins.git

cd docker-begins


# Criação da Imagem
 - Rode o seguinte comando:
 docker build -t barcelos3/app-v1 .
 
 obs: (dokcer build -t nome_image:versão)

# Verifique se a imagem foi criada
docker images

# Suba o Container com a imagem criada expondo a porta 80
docker run -d -p 80:80 --name meu-site -e API_URL=http://api.meusite.com.br/api/ -v $PWD/site/arquivos:/Arquivos/ barcelos3/app-v1

# Verifique se o container está rodando e a saúde do mesmo
docker ps -a
docker stats

# Acesse o app pelo navegador
http://localhost
