FROM rail44/rustup-musl:nightly
RUN mkdir -p /opt/libressl-dev-musl
RUN curl http://dl-3.alpinelinux.org/alpine/edge/main/x86_64/libressl-dev-2.4.3-r2.apk | tar zxC /opt/libressl-dev-musl
ENV OPENSSL_STATIC=1
ENV OPENSSL_INCLUDE_DIR=/opt/libressl-dev-musl/usr/include
ENV OPENSSL_LIB_DIR=/opt/libressl-dev-musl/usr/lib
