FROM ubuntu:20.04

RUN ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime
RUN apt update && apt install -y git pkg-config libfontconfig1-dev pip libhdf5-dev tzdata

RUN git clone https://github.com/SavickTso/motion-transformer.git
RUN cd motion-transformer && pip install lap Cython && pip install -r requirements.txt
