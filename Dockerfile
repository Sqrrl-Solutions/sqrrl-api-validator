FROM alpine:3.20

RUN npm install -g @stoplight/spectral-cli

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]