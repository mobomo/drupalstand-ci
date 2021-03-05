# Alpine v3.12
FROM docker:20.10.2-git

RUN apk add --no-cache \
    py3-pip==20.1.1-r0 \
    bash==5.0.17-r0 \
    make==4.3-r0 \
    gcc==9.3.0-r2 \
    libc-dev==0.7.2-r3 \
    python3-dev==3.8.5-r0 \
    libffi-dev==3.3-r2 \
    openssl-dev==1.1.1i-r0 \
    jq==1.6-r1

RUN pip3 install docker-compose==1.27.4

RUN apk add --no-cache \
    php7==7.3.26-r0 \
    composer==1.10.19-r0 \
    patch==2.7.6-r6 \
    php7-dom==7.3.26-r0 \
    php7-tokenizer==7.3.26-r0 \
    php7-simplexml==7.3.26-r0 \
    php7-ctype==7.3.26-r0 \
    php7-xmlwriter==7.3.26-r0 \
    php7-zip==7.3.26-r0 \
    php7-bz2==7.3.26-r0 \
    php7-exif==7.3.26-r0 \
    php7-pdo==7.3.26-r0 \
    php7-mysqli==7.3.26-r0 \
    php7-pdo_dblib=7.3.26-r0 \
    php7-pdo_mysql==7.3.26-r0 \
    php7-xml==7.3.26-r0 \
    php7-session==7.3.26-r0 \
    php7-mbstring==7.3.26-r0 \
    php7-iconv==7.3.26-r0\
    php7-gmp==7.3.26-r0\
    php7-xmlrpc==7.3.26-r0\
    php7-soap==7.3.26-r0\
    php7-xsl==7.3.26-r0\
    php7-curl==7.3.26-r0\
    php7-gd==7.3.26-r0

RUN apk add --no-cache \
    nodejs==12.20.1-r0 \
    npm==12.20.1-r0

RUN rm -f /var/cache/apk/*

ENTRYPOINT ["/bin/sh"]
