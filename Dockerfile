FROM alpine:3.20

RUN apk add nodejs npm \
    && npm install -g @stoplight/spectral-cli

COPY package*.json ./

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]