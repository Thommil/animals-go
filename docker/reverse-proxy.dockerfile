#Main reverse-proxy using nginx image (override to build/configure reverse-proxy)
FROM nginx:latest
COPY nginx-docker.conf /etc/nginx/conf.d/default.conf