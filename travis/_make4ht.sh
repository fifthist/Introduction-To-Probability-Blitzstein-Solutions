#!/bin/sh

set -e

cd external/make4ht
make
make install
cd -
