FROM alpine:3.19

RUN apk add --no-cache curl && \
    ARCH=$(uname -m | sed 's/x86_64/amd64/;s/aarch64/arm64/') && \
    curl -fsSL "https://github.com/jpillora/chisel/releases/download/v1.10.0/chisel_1.10.0_linux_${ARCH}.gz" \
      | gunzip > /usr/local/bin/chisel && \
    chmod +x /usr/local/bin/chisel

EXPOSE 8888

CMD sh -c "chisel server --port 8888 --socks5 --auth \"$CHISEL_AUTH\""
