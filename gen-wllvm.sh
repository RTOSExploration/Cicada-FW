#!/usr/bin/env bash

DB=$RTOSExploration/bitcode-db/Cicada-FW
rm -rf $DB build && mkdir -p build
meson build --cross-file stm32.cross.build
cd build && genbc $DB -c "ninja"
