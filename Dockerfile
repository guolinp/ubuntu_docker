FROM ubuntu:18.10

MAINTAINER "Pan Guolin"

ENV PYTHONIOENCODING UTF-8
ENV PYTHON_PATH /usr/bin/python3
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get clean && apt-get upgrade -y && apt-get update -y --fix-missing

RUN apt-get -y install \
        git \
        python3 \
        python3-dev \
        curl

# slim down image
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /usr/share/man/?? /usr/share/man/??_*

RUN curl -O https://bootstrap.pypa.io/get-pip.py && \
        python3 get-pip.py && \
        rm -rf get-pip.py

# goes into bash
CMD ["/bin/bash"]
