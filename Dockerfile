FROM ubuntu:latest

RUN export DEBIAN_FRONTEND=noninteractive && \
	apt update -y && \
	apt install -y make texlive-full fonts-font-awesome

# docker build . -t texlive-builder
# docker run -it -v $(pwd):/home -w /home texlive-builder bash
