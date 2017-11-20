FROM ubuntu

ENV LANG C.UTF-8
RUN apt update
RUN apt install -y curl git zsh python-pip python3-pip gawk locales
RUN locale-gen ja_JP.UTF-8

WORKDIR /root
RUN mkdir /root/dotfiles
ADD . dotfiles

WORKDIR /root/dotfiles
CMD tail -f /dev/null
