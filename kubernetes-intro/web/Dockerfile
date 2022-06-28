FROM nginx
USER 1001
WORKDIR /app
COPY nginx.conf /etc/nginx/conf.d/
COPY index.html /app/
RUN touch /var/run/nginx.pid && \
  chown -R 1001:1001 /var/run/nginx.pid && \
  chown -R 1001:1001 /var/cache/nginx && \
  chown -R 1001:1001 /app
EXPOSE 8000
