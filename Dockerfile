FROM python:3.6.3

WORKDIR /usr/distr
ADD im-install.sh
RUN ./im-install.sh
