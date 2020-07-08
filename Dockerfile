FROM nginx

LABEL version="1.0.0" description="Disponibilizando site com NGINX" maintainer="Diego Barcelos Comitre<barcelos3@gmail.com>"

# Criando e dando permissão no diretório compartilhado do hospedeiro/container
RUN cd / && mkdir Arquivos && chmod 777 -R Arquivos/

# Copiando arquivo do App
COPY ./app/* /usr/share/nginx/html/
COPY ./app/image/thumb-1920-281951.jpg /usr/share/nginx/html/

# Definindo o diretório criado como Volume persistente 
VOLUME /Arquivos/


# Exposição da porta 80 do container
EXPOSE 80

# Variaveis de ambiente
ENV API_URL=http://localhost:8000/api/
ENV API_BANCO=meu_site

# Fixando caminho do ambiente de trabalho no container 
WORKDIR /usr/share/nginx/html/

# Comandos de execução do deamon do ngnix
ENTRYPOINT ["/usr/sbin/nginx"]
CMD ["-g", "daemon off;"]

