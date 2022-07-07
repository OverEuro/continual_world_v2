#!/bin/bash

seed="0" # seeds = {0, 2, 4, 6, 8}

# For AGEM
# path="tmp_cl_agem_"$seed".output"

# nohup python run_cl.py \
# --tasks=CW10 \
# --seed=$seed \
# --cl_method=agem \
# --regularize_critic=True \
# --episodic_mem_per_task=10000 \
# --episodic_batch_size=128 \
# --logger_output tsv \
# --group_id \
# cl_task >$path 2>&1 &

# For L2
path="tmp_cl_l2_"$seed".output"

nohup python run_cl.py \
--tasks=CW10 \
--seed=0 \
--cl_method=l2 \
--cl_reg_coef=100000.0 \
--logger_output tsv \
--group_id cl_task >$path 2>&1 &

