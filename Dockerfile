FROM ubuntu:latest
RUN apt update   
# MXE Requirements
RUN apt-get install -y --no-install-recommends \
 wget git python3-pip\
 python3 python3-setuptools build-essential && rm -rf /var/lib/apt/lists/*  
RUN mkdir /WORK
WORKDIR /WORK

RUN wget --no-check-certificate https://raw.githubusercontent.com/enjoy-digital/litex/master/litex_setup.py && \
        chmod +x litex_setup.py && \
        git config --global http.sslVerify false && \
        git config --global https.sslVerify false && \
        ./litex_setup.py init install
        
