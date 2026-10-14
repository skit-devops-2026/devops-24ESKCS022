
FROM nginx:alpine

WORKDIR /usr/share/nginx/html

COPY index.html events.html ./
COPY css/ ./css/
COPY js/ ./js/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]