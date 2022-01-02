FROM nginx:latest

ENV JE_BACKEND_ADDRESS "127.0.0.1"
ENV JE_BACKEND_PORT "25565"
ENV BE_BACKEND_ADDRESS "127.0.0.1"
ENV BE_BACKEND_PORT "19132"

COPY nginx.conf /etc/nginx/nginx.conf
COPY templates /etc/nginx/templates
