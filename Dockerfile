FROM ubuntu:22.04

LABEL maintainer="Afonso Bravo"
LABEL version="0.0.1"
LABEL description="2fast2q"

# ps (procps) + Python 3.11 + pip
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
       procps \
       software-properties-common \
    && add-apt-repository ppa:deadsnakes/ppa \
    && apt-get update \
    && apt-get install -y --no-install-recommends \
       python3.11 python3.11-venv python3.11-distutils \
    && rm -rf /var/lib/apt/lists/*

# optional: install pip for 3.11
RUN curl -sS https://bootstrap.pypa.io/get-pip.py -o get-pip.py \
    && python3.11 get-pip.py \
    && rm get-pip.py

# your tools / workflow setup here


RUN pip install --no-cache-dir fast2q

# Default to a shell for “command line access”
WORKDIR /data
ENTRYPOINT ["/bin/bash"]
CMD []