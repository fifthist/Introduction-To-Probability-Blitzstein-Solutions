#!/bin/sh

set -e

cp external/make4ht-3d97d23 make4ht-3d97d23
cd make4ht-3d97d23
make
make install
cd ../