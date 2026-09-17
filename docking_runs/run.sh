#!/bin/bash

rbcavity -W -d -r sysdef.prm
rbdock -i p-cymene.sd -o out -r sysdef.prm -p dock_solv.prm -n 100 -T 2
sdsort -n -f'SCORE' out.sd > out_sorted.sd
sdreport -t out_sorted.sd > sdreport_out.txt

