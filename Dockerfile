FROM alpine:3.17

RUN apk update \
&& apk add --no-cache \
privoxy

RUN touch /etc/privoxy/config
RUN echo "listen-address 0.0.0.0:8118" >> /etc/privoxy/config
RUN echo "forward-socks5 / socks5:1080 ." >> /etc/privoxy/config

EXPOSE 8118

CMD ["privoxy", "--no-daemon", "/etc/privoxy/config"]
