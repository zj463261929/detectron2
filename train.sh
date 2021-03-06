#!/usr/bin/env bash

LOG="log/oil/res101_1080_20191104_scale4_269.txt"
exec &> >(tee -a "$LOG")
echo Logging output to "$LOG" 

#export CUDA_VISIBLE_DEVICES=0

python tools/train_net.py  \
--num-gpus 1 \
--config-file configs/Base-RetinaNet_zj.yaml \
OUTPUT_DIR output/oil/res101_1080_20191104_scale4_269/