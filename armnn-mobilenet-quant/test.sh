#!/bin/sh
#! 假设在同一根目录下有 NXP 的 ArmnnTests
_root_dir=../..
_data_dir=${_root_dir}/ArmnnTests
# LD_LIBRARY_PATH=$LD_LIBRARY_PATH:. ./mobilenetv1_quant_tflite \
#     -m ${_data_dir}/ArmnnTests/models/TensorFlow\ Lite/TfLiteMobilenetV2Quantized-Armnn/mobilenet_v2_1.0_224_quant.tflite \
#     -d ${_data_dir}/data/Dog.jpg \
#     -p ./models/labels.txt \
#     -c GpuAcc CpuAcc

# -m ${_root_dir}/models/TensorFlow\ Lite/TfLiteMobilenetV2Quantized-Armnn/mobilenet_v2_1.0_224_quant.tflite \

LD_LIBRARY_PATH=$LD_LIBRARY_PATH:${_root_dir}/armnn-sdk/arm64/lib:. \
    ./mobilenetv1_quant_tflite \
    -m ${_data_dir}/models/TensorFlow\ Lite/TfLiteMobilenetQuantized-Armnn/mobilenet_v1_1.0_224_quant.tflite \
    -d ${_data_dir}/data/Dog.jpg \
    -p ./models/labels.txt \
    -c GpuAcc
