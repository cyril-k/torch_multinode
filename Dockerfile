# FROM pytorch/pytorch:2.3.1-cuda12.1-cudnn8-devel
# FROM pytorch/pytorch:2.4.0-cuda12.4-cudnn9-devel
# FROM pytorch/pytorch:2.1.1-cuda12.1-cudnn8-devel
FROM nvcr.io/nvidia/pytorch:24.05-py3

RUN pip install --no-cache-dir wandb llama-recipes==0.0.3
RUN apt-get update \
    && apt-get install -y infiniband-diags
# RUN apt install -y --allow-change-held-packages libnccl2=2.18.3-1+cuda12.1 libnccl-dev=2.18.3-1+cuda12.1

COPY . /workspace

WORKDIR /workspace
