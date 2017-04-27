FROM ubuntu:xenial
MAINTAINER Antonis Kalipetis <akaliipetis@gmail.com>

# Add the entrypoint binary
ADD https://dl.eff.org/certbot-auto /usr/local/bin/certbot
ENTRYPOINT /usr/local/bin/certbot

# Run this, to install all needed dependencies
RUN chmod +x /usr/local/bin/certbot && yes | certbot --version
