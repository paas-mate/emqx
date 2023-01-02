FROM ttbb/base

ARG TARGETARCH

RUN wget https://www.emqx.com/en/downloads/broker/5.0.13/emqx-5.0.13-ubuntu20.04-$TARGETARCH.tar.gz  && \
mkdir -p emqx && \
tar -zxvf emqx-5.0.13-ubuntu20.04-arm64.tar.gz -C emqx && \
rm -rf emqx-5.0.13-ubuntu20.04-$TARGETARCH.tar.gz

ENV EMQ_HOME /opt/emqx

WORKDIR /opt/emqx
