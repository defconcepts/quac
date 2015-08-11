#!/bin/bash

# Copyright (c) Los Alamos National Security, LLC, and others.

set -e
$(dirname $0)/../ready.sh

# SSH is inappropriate in a SLURM allocation, so don't run there even if it
# might work.
test "$SLURM_NODELIST" = "" && ssh -q -o BatchMode=yes $HOSTNAME true
