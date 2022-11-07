# Privoxy

## Build
Via GitHub repository
```bash
$ docker build --tag alireaza/privoxy:$(date -u +%Y%m%d) --tag alireaza/privoxy:latest https://github.com/alireaza/privoxy.git
```

## Run
Forward [OpenConnect](https://github.com/alireaza/openconnect) SOCKS5:9052 to HTTP:9053
```bash
$ docker run --interactive --tty --rm --add-host="socks5:172.17.0.1" --publish="9053:8118" --name="privoxy" alireaza/privoxy
```

