FROM nginx:latest

COPY nginx.conf /etc/nginx/nginx.conf
COPY templates /etc/nginx/templates
