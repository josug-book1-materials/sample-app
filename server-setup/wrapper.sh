#!/bin/bash

prog=$1
logfile=$2

logdir=$(cd $(dirname $0) && cd $(dirname $logfile) && pwd)

cd $(dirname $0)
cd $(dirname $prog)

python $(basename $prog) >> $logdir/$(basename $logfile) 2>&1 &
