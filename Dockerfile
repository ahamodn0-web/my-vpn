FROM teddysun/xray:latest

# config dir
RUN mkdir -p /etc/xray

COPY config.json /etc/xray/config.json

EXPOSE 8080 8081 8082 8083

ENTRYPOINT ["/usr/bin/xray", "-config", "/etc/xray/config.json"]
