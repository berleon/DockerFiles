FROM bioroboticslab/arch
MAINTAINER github@leon-sixt.de

RUN pacman -Syu --noconfirm

RUN pacman -S --noconfirm \
    python \
    python-pip \
    python-setuptools \
    python-numpy \
    python-scipy \
    python-pillow \
    python-matplotlib \
    python-scikit-image \
    jupyter \
    ipython-notebook \
    mathjax \
    flake8 \
    python-jedi

RUN pip install keras==0.3.1 \
    scikit-learn

ENV CUDA_ROOT=/opt/cuda
ENV THEANO_FLAGS='cuda.root=/opt/cuda,device=gpu,floatX=float32'
