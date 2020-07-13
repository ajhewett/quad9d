FROM visibilityspots/cloudflared

ENV 5054
ENV DNS1 9.9.9.9
ENV DNS2 149.112.112.112

ENV UPSTREAM1 https://${DNS1}/dns-query
ENV UPSTREAM2 https://${DNS2}/dns-query

CMD ["/bin/sh", "-c", "/usr/local/bin/cloudflared proxy-dns --address 0.0.0.0 --port ${PORT} --upstream ${UPSTREAM1} --upstream ${UPSTREAM2}"]
