# quad9d

Run the cloudflared proxy-dns on port 5054 using the DNS over HTTPS endpoints from quad9.

This docker image is a simple extension of the visibilityspots/cloudflared image to use the quad9 DNS over HTTPS endpoints.

## Environment Variables

The following environment variables are available (together with defaults):
```
ENV DNS1 9.9.9.9
ENV DNS2 149.112.112.112

ENV UPSTREAM1 https://${DNS1}/dns-query
ENV UPSTREAM2 https://${DNS2}/dns-query
```

You can set these envvars to use run a container with differnt DoH servers. 
