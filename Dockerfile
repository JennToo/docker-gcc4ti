FROM ubuntu:20.04

RUN apt-get update && apt-get install -y wget

WORKDIR /tmp
RUN wget https://github.com/debrouxl/gcc4ti/archive/refs/heads/next.tar.gz
RUN tar -xf next.tar.gz
RUN apt-get install -y build-essential
WORKDIR /tmp/gcc4ti-next/trunk/tigcc-linux/scripts
RUN ./updatesrc
RUN cd ../gcc4ti-0.96b11 && scripts/Install
