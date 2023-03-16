FROM ubuntu:latest
RUN apt update   
# MXE Requirements
RUN apt-get install -y --no-install-recommends \
 python3 python3-setuptools build-essential && rm -rf /var/lib/apt/lists/*  
RUN mkdir /WORK
WORKDIR /WORK
RUN wget https://raw.githubusercontent.com/enjoy-digital/litex/master/litex_setup.py && \
        chmod +x litex_setup.py && \
        ./litex_setup.py init install
        
