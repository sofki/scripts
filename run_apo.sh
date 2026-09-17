#!/bin/bash

rbcavity -W -d -r sysdef_apo.prm
rbdock -i p-cymene.sd -o apo -r sysdef_apo.prm -p dock_solv.prm -n 100 -T 2
sdsort -n -f'SCORE' apo.sd > apo_sorted.sd
sdreport -t apo_sorted.sd > sdreport_apo.txt

