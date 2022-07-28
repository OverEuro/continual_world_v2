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
# path="tmp_cl_l2_"$seed".output"

# nohup python run_cl.py \
# --tasks=CW10 \
# --seed=$seed \
# --cl_method=l2 \
# --cl_reg_coef=100000.0 \
# --logger_output tsv \
# --group_id cl_task >$path 2>&1 &

# For EWC
# path="tmp_cl_ewc_"$seed".output"

# nohup python run_cl.py \
# --tasks=CW10 \
# --seed=$seed \
# --cl_method=ewc \
# --cl_reg_coef=10000.0 \
# --logger_output tsv \
# --group_id cl_task >$path 2>&1 &

# For MAS
# path="tmp_cl_mas_"$seed".output"

# nohup python run_cl.py \
# --tasks=CW10 \
# --seed=$seed \
# --cl_method=mas \
# --cl_reg_coef=10000.0 \
# --logger_output tsv \
# --group_id cl_task >$path 2>&1 &

# For VCL
path="tmp_cl_vcl_"$seed".output"

nohup python run_cl.py \
--tasks=CW10 \
--seed=$seed \
--cl_method=vcl \
--cl_reg_coef=1.0 \
--vcl_first_task_kl=False \
--logger_output tsv \
--group_id cl_task >$path 2>&1 &
