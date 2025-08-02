#!/bin/sh
PYTHON=python
dataset=ade20k
exp_name=pspnet50_sat
exp_dir=exp/${dataset}/${exp_name}
result_dir=${exp_dir}/result
config=config/${dataset}/${dataset}_${exp_name}.yaml
now=$(date +"%Y%m%d_%H%M%S")

mkdir -p ${result_dir}
cp tool_test/ade20k/psp_test_sat.sh tool_test/ade20k/test_ade_psp.py ${config} ${exp_dir}

export PYTHONPATH=./
$PYTHON -u tool_test/ade20k/test_ade_psp.py \
  --config=${config} \
  2>&1 | tee ${result_dir}/test-$now.log

$PYTHON -u tool_test/ade20k/test_ade_psp.py \
  --config=${config} --attack \
  2>&1 | tee ${result_dir}/test-$now.log

