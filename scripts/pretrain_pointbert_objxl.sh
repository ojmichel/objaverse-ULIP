CUDA_VISIBLE_DEVICES=0,1,2,3,4,5,6,7 OMP_NUM_THREADS=4 python -m torch.distributed.launch --nproc_per_node=4 main.py --model ULIP_PointBERT \
--npoints 8192 \
--lr 3e-3 \
--output-dir ./outputs/reproduce_pointbert_8kpts_objxl \
--pretrain_dataset_name objaversexl \
--pretrain_dataset_prompt objaversexl \
--workers 16 \
--no-text \
--batch-size 64 \
--wandb \

