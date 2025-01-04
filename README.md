# Privoxy

## Build
Via GitHub repository
```bash
$ docker build --tag alireaza/privoxy:$(date -u +%Y%m%d) --tag alireaza/privoxy:latest https://github.com/alireaza/privoxy.git
```

## Run
Forward [OpenConnect](https://github.com/alireaza/openconnect) SOCKS5:1080 to HTTP:8118
```bash
$ docker run --interactive --tty --rm --add-host="socks5:172.17.0.1" --publish="8118:8118" --name="privoxy" alireaza/privoxy
```

