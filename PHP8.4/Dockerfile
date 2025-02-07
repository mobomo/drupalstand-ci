# Alpine v3.20
FROM docker:27.5.1-alpine3.21

ENV CRYPTOGRAPHY_DONT_BUILD_RUST=1

RUN apk update --no-cache

RUN apk add --no-cache \
    py3-pip \
    bash \
    make \
    rsync \
    rust \
    cargo \
    gcc \
    libc-dev \
    python3-dev \
    openssl-dev \
    libffi-dev \
    docker-compose \
    mariadb-client \
    git

COPY scripts/docker-compose.sh /usr/bin/docker-compose.sh
RUN chmod +x /usr/bin/docker-compose.sh

RUN apk add --no-cache \
    php84 \
    php84-bcmath\
    php84-bz2 \
    php84-cli \
    php84-ctype \
    php84-curl \
    php84-dom \
    php84-exif \
    php84-fileinfo \
    php84-gd \
    php84-gmp \
    php84-iconv \
    php84-mbstring \
    php84-mysqli \
    php84-pdo \
    php84-pdo_dblib \
    php84-pdo_mysql \
    php84-phar \
    php84-session \
    php84-simplexml \
    php84-soap \
    php84-sodium \
    php84-tokenizer \
    php84-xml \
    php84-xmlreader \
    php84-xmlwriter \
    php84-xsl \
    php84-zip

RUN apk add --no-cache \
    nodejs \
    npm \
    curl \
    jq \
    patch

RUN ln -s /usr/bin/php84 /usr/bin/php

COPY --from=composer/composer /usr/bin/composer /usr/bin/composer

RUN rm -f /var/cache/apk/*

RUN npm install -g gulp

## Install Robo.
RUN curl -L "https://github.com/consolidation/Robo/releases/download/3.0.7/robo.phar" -o /tmp/robo.phar \
    && chmod +x /tmp/robo.phar \
    && mv /tmp/robo.phar /usr/local/bin/robo

ENTRYPOINT ["/bin/sh"]
