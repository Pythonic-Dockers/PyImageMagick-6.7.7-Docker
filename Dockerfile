FROM python:3.6.3

RUN mkdir -p /tmp/distr && \
    cd /tmp/distr && \
    wget https://www.imagemagick.org/download/releases/ImageMagick-6.7.7-10.tar.xz && \
    tar xvf ImageMagick-6.7.7-10.tar.xz && \
    cd ImageMagick-6.7.7-10 && \
    ./configure --enable-shared=yes --disable-static --without-perl && \
    make && \
    make install && \
    ldconfig /usr/local/lib && \
    cd /tmp && \
    rm -rf distr