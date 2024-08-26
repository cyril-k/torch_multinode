FROM pytorch/pytorch:2.3.1-cuda12.1-cudnn8-devel


# FROM pytorch/pytorch:2.4.0-cuda12.4-cudnn9-devel
RUN pip install --no-cache-dir wandb llama-recipes==0.0.3

COPY . /workspace

WORKDIR /workspace
