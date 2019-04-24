FROM doldma/sumdoc-texlive-2017:2.0

RUN apt update -y && \
	apt install -y make fonts-font-awesome

# docker build . -t texlive-builder
# docker run -it -v $(pwd):/home -w /home texlive-builder bash
