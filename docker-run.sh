docker run -d \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -v $PWD/traefik.toml:/traefik.toml \
  -v $PWD/acme.json:/acme.json \
  -p 80:80 \
  -p 443:443 \
  -l traefik.frontend.rule=Host:traefik.bieccamvd.com \
  -l traefik.port=8090 \
  --network bridge \
  --name traefik \
  traefik:1.7.6-alpine
