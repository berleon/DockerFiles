FROM ben/arch-python
MAINTAINER github@leon-sixt.de

RUN pacman -Sy --noconfirm
RUN pacman -S --noconfirm openssh

# setup sudo
RUN groupadd --system sudo
RUN echo "%sudo ALL=(ALL) ALL" >> /etc/sudoers

# Use the same gid and uid as your user on the host system. You can find them
# out with the `id`  programm. This way the file ownership in mapped directories is
# consistent with the host system.
RUN groupadd --gid 1000 leon
RUN useradd --uid 1000  --gid leon \
    --home-dir /home/leon --shell /usr/bin/zsh  \
    --groups sudo,leon \
    --password leon \
    leon

# default password leon
RUN echo leon:leon | chpasswd && \
    echo root:root | chpasswd

USER leon
WORKDIR /home/leon
