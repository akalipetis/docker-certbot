# Docker image for Let's encrypt certbot

Pretty simple image, allowing you to easily manage and add certificates using Let's encrypt

## Usage

Usage is mostly intended behind an NGINX or similar proxy, with the following Docker Compose file and proxy configuration.

### Docker Compose

Use [this `docker-compose.yml`](docker-compose.yml) file and:

* Create a new certificate: `docker-compose run --rm certonly --webroot -w /tmp -d example.com`
* Renew certificates: `docker-compose run --rm renew`

### Typical NGINX configuration

```nginx
server {
    listen 80;
    server_name example.com;

    location /.well-known/ {
        root /tmp;
    }

    location / {
        ...
    }
}
```
