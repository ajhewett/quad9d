FROM visibilityspots/cloudflared

ENV PORT 5054

ENV UPSTREAM1 https://9.9.9.9/dns-query
ENV UPSTREAM2 https://149.112.112.112/dns-query

CMD ["/bin/sh", "-c", "/usr/local/bin/cloudflared proxy-dns --address 0.0.0.0 --port ${PORT} --upstream ${UPSTREAM1} --upstream ${UPSTREAM2}"]
