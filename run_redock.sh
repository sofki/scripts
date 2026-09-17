#!/bin/bash

rbcavity -W -d -r sysdef_apo.prm
rbdock -i reflig.sdf -o redock -r sysdef_apo.prm -p dock_solv.prm -n 100 -T 2
sdsort -n -f'SCORE' redock.sd > redock_sorted.sd
sdreport -t redock_sorted.sd > sdreport_redock.txt
