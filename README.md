# Repositopry for testing multinode torch training

Build image with the following:

```bash
sudo docker build . -t torch-test:latest
```

launch `finetuning.py` with the following `args` for multinode setup:
```yaml
    - torchrun
    - --nproc_per_node={{ $nproc_per_node }}
    - --nnodes={{ $nnodes }}
    - --node_rank={{ $i }}
    - --rdzv_backend=c10d
    - --rdzv_endpoint={{ $masterAddr }}:5005
    - finetuning.py
    - --enable_fsdp
    - --model_name=meta-llama/Meta-Llama-3-8B 
    - --output_dir=./
    - --dataset="llamaguard_toxicchat_dataset"
    - --fsdp_config.pure_bf16
    - --use_fast_kernels
    - --batch_size_training=8
    - --num_workers_dataloader=8
    - --use-wandb
```

`finetuning.py` script is based on [example from Meta](https://github.com/meta-llama/llama-recipes/blob/main/src/llama_recipes/finetuning.py).
