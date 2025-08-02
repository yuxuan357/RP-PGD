#!/bin/sh
PYTHON=python

dataset=ade20k
exp_name=pspnet50_sat
exp_dir=exp/${dataset}/${exp_name}
model_dir=${exp_dir}/model
result_dir=${exp_dir}/result
config=config/${dataset}/${dataset}_${exp_name}.yaml
now=$(date +"%Y%m%d_%H%M%S")

mkdir -p ${model_dir} ${result_dir}
cp tool_train/ade20k/psp_train_sat.sh tool_train/train_sat_psp.py ${config} ${exp_dir}

export PYTHONPATH=./
export CUDA_HOME=/home/zhangyuxuan/cuda-11.1
#srun -p $PARTITION -n1 --gres=gpu:8 --ntasks-per-node=8 --job-name=python \
$PYTHON tool_train/train_sat_psp.py \
  --config=${config} \
  2>&1 | tee ${model_dir}/train-$now.log
