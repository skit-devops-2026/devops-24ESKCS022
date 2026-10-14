FROM nginx:alpine

ARG COMMIT_SHA=local

WORKDIR /usr/share/nginx/html

COPY index.html events.html ./
COPY css/ ./css/
COPY nginx/default.conf /etc/nginx/conf.d/default.conf
COPY js/ ./js/

RUN printf '%s\n' "$COMMIT_SHA" > /usr/share/nginx/html/health

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]