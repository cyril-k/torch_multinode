FROM nvcr.io/nvidia/pytorch:24.05-py3
# FROM nvcr.io/nvidia/tritonserver:24.05-pyt-python-py3

RUN pip install --no-cache-dir wandb llama-recipes==0.0.3

COPY . /workspace

WORKDIR /workspace
