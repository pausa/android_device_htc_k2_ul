#!/bin/sh

set -e

export DEVICE=k2_ul
export VENDOR=htc
./../s4-common/extract-files.sh $@
