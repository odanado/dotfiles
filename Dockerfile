FROM ubuntu

ENV LANG C.UTF-8
RUN apt update
RUN apt install -y curl git zsh python-pip gawk

WORKDIR /root
RUN mkdir /root/dotfiles
ADD . dotfiles

WORKDIR /root/dotfiles
CMD tail -f /dev/null
