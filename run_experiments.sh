#!/bin/bash

# Part 1 for AGEM
seed="0" # seeds = {0, 2, 4, 6, 8}
path="tmp_cl_agem_"$seed".output"

nohup python run_cl.py \
--tasks=CW10 \
--seed=$seed \
--cl_method=agem \
--regularize_critic=True \
--episodic_mem_per_task=10000 \
--episodic_batch_size=128 \
--logger_output tsv \
--group_id \
cl_task >$path 2>&1 &