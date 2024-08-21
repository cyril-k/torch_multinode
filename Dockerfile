FROM pytorch/pytorch:2.3.1-cuda12.1-cudnn8-devel

RUN pip install --no-cache-dir tensorboard

COPY . /workspace

WORKDIR /workspace
