FROM ben/arch-python
MAINTAINER github@leon-sixt.de

RUN pacman -Syu --noconfirm

RUN useradd --uid 1000 --gid 1000 \
    --home-dir /home/leon --shell /usr/bin/zsh  \
    --groups sudo \
    --password leon \
    leon

RUN echo "sudo ALL=(ALL) ALL" >> /etc/sudoers
