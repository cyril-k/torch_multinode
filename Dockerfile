FROM nvcr.io/nvidia/pytorch:24.05-py3

RUN apt-get update \
    && apt-get install -y infiniband-diags

COPY . /workspace

WORKDIR /workspace