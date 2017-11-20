FROM alpine:edge

RUN gfortran --version

RUN apk add --update curl gfortran make musl-dev \
    && mkdir -p /root/camb \
    && curl -L https://github.com/cmbant/camb/tarball/f5ffb9a | tar zxf - -C /root/camb --strip-components=1 \
    && cd /root/camb \
    && make