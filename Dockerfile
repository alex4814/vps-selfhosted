FROM caddy:2.6-builder AS builder

RUN xcaddy build \
    --with github.com/caddy-dns/cloudflare \
    --with github.com/caddy-dns/duckdns \
    --with github.com/mholt/caddy-l4 \
    --with github.com/mholt/caddy-dynamicdns \
    --with github.com/mholt/caddy-events-exec \
    --with github.com/mholt/caddy-webdav \
    --with github.com/mastercactapus/caddy2-proxyprotocol \
    --with github.com/imgk/caddy-trojan

FROM caddy:2.6

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
