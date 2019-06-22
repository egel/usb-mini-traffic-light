FROM ubuntu:18.04

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        wget=1.19.4-1ubuntu2.2 \
        unzip=6.0-21ubuntu1 \
        tar=1.29b-2ubuntu0.1 \
        apt-utils=1.6.11 \

        # required to install clewarecontrol
        #    build-essential \
        g++=4:7.4.0-1ubuntu2.3 \
        make=4.1-9.1ubuntu1 \
        pkg-config=0.29.1-0ubuntu2 \
        libhidapi-dev=0.8.0~rc1+git20140818.d17db57+dfsg-2 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

COPY clewarecontrol_4_0.tgz .
RUN tar xzvf clewarecontrol_4_0.tgz
RUN rm -rf clewarecontrol_4_0.tgz
RUN make --directory clewarecontrol-4.0 install
