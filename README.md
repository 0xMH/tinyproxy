# cranl-proxy

Chisel proxy server for CranL. Tunnels TCP over WebSocket, exposes SOCKS5 locally.

## Deploy

1. Push this repo to GitHub and connect it to CranL
2. Set port to `8888` in app settings
3. Set env var `CHISEL_AUTH` to `user:password` in app settings
4. Deploy

## Use

```bash
chisel client --auth user:password https://your-app.cranl.net socks
```

This opens a SOCKS5 proxy on `localhost:1080`. Point your browser at it.

## Firefox

Settings - Network Settings - Manual proxy:
- SOCKS Host: `127.0.0.1`, Port: `1080`, SOCKS v5
- Check "Proxy DNS when using SOCKS v5"
- Clear HTTP and SSL proxy fields

## Phone (same WiFi)

```bash
chisel client --auth user:password https://your-app.cranl.net 0.0.0.0:1080:socks
```

Then set phone WiFi proxy to your machine's local IP on port 1080.
