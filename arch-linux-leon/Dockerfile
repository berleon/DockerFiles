FROM ben/arch-python
MAINTAINER github@leon-sixt.de

RUN pacman -Sy --noconfirm
RUN pacman -S --noconfirm openssh

RUN groupadd --system sudo
RUN useradd --uid 1000  \
    --user-group \
    --home-dir /home/leon --shell /usr/bin/zsh  \
    --groups sudo \
    --password leon \
    leon

# default password leon
RUN echo leon:leon | chpasswd && \
    echo root:root | chpasswd
RUN echo "%sudo ALL=(ALL) ALL" >> /etc/sudoers

USER leon
WORKDIR /home/leon
