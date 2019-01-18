#!/bin/bash

set -x

KERNEL_PATH="$(pwd)/../kernel/kata-linux-4.19.10-22"
CMDPATH="./scripts/kconfig/merge_config.sh"
OUTPUT="$(pwd)/output/.config"

CONFIGS=$(ls $(pwd)/*.conf)
mkdir -p ${OUTDIR}

( export KCONFIG_CONFIG=${OUTPUT}; export ARCH=$(uname -m); cd ${KERNEL_PATH}; ${CMDPATH} -n ${CONFIGS} )
