FROM traefik:v3.5.1

RUN apk add --no-cache openssl

WORKDIR /certs
RUN openssl req -x509 -newkey rsa:4096 -nodes -keyout selfsigned.key -out selfsigned.crt -days 3650 -subj "/CN=example.local"
