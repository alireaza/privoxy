FROM alpine:3.16.2

RUN apk update \
&& apk add --no-cache \
privoxy

RUN touch /etc/privoxy/config
RUN echo "listen-address 0.0.0.0:8118" >> /etc/privoxy/config
RUN echo "forward-socks5 / socks5:9052 ." >> /etc/privoxy/config

EXPOSE 8118

CMD privoxy --no-daemon /etc/privoxy/config
