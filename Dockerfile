FROM alpine:3.20

RUN apk add nodejs npm \
    && npm install -g @stoplight/spectral-cli

COPY entrypoint.sh /entrypoint.sh

COPY package*.json ./

ENTRYPOINT ["/entrypoint.sh"]