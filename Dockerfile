FROM ubuntu:20.04

RUN apt-get update -y
RUN apt-get install -y build-essential pkg-config cmake libboost-all-dev libeigen3-dev curl wget git libftdi-dev python3 python3-dev
RUN curl -s https://raw.githubusercontent.com/esden/WTFpga/master/summon-fpga-tools.sh | bash

ENTRYPOINT ["echo $GITHUB_SHA"]
