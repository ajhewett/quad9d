# ajhewett/quad9d

![Docker Image CI](https://github.com/ajhewett/quad9d/workflows/Docker%20Image%20CI/badge.svg)

Run the cloudflared proxy-dns on port 5054 using the DNS over HTTPS endpoints from quad9.

This docker image is a simple extension of the [visibilityspots/cloudflared](https://hub.docker.com/r/visibilityspots/cloudflared/) image to use the quad9 DNS over HTTPS endpoints.

The docker image is published to [ajhewett/quad9d](https://hub.docker.com/r/ajhewett/quad9d) on Docker Hub.

## Run

```
docker run --name quad9d --rm --net host ajhewett/quad9d
```

## Environment Variables

The following environment variables are available (together with defaults):
```
ENV PORT 5054
ENV DNS1 9.9.9.9
ENV DNS2 149.112.112.112

ENV UPSTREAM1 https://${DNS1}/dns-query
ENV UPSTREAM2 https://${DNS2}/dns-query
```

You can set these variables to run a container with different DoH servers. 

## License

Distributed under the MIT license.
