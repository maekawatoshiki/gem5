#!/bin/bash -eux

export LD_LIBRARY_PATH=$(python3-config --prefix)/lib
export PATH="/usr/lib/ccache:${PATH}"

scons build/ARM/gem5.opt -j $(nproc)
scons build/ARM/compile_commands.json
