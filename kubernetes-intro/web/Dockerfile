FROM nginx
USER 1001
WORKDIR /app
COPY /kubernetes-intro/web/nginx.conf /etc/nginx/nginx.conf
COPY /kubernetes-intro/web/index.html /app/
EXPOSE 8000
