FROM ubuntu

RUN apt update
RUN apt install -y --no-install-recommends software-properties-common && \
    apt-add-repository --yes --update ppa:ansible/ansible && \
    apt -y --no-install-recommends install ansible python-apt locales

ENV LANG ja_JP.UTF-8
RUN locale-gen $LANG

WORKDIR /work
