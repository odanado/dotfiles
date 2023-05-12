FROM ubuntu:23.04

RUN apt update -y

RUN apt-get install --no-install-recommends -y build-essential procps curl file git ca-certificates zsh

# USER user