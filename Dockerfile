FROM nginx:latest
COPY src/main/webapp /usr/share/nginx/html
EXPOSE 80
