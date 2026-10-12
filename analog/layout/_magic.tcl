crashbackups stop
gds read /scratch/jobs/5d727ad384284eafaa017738628da1fb/run/repo/analog/layout/LS_UP.gds
load LS_UP
select top cell
extract do local
extract all
ext2spice lvs
ext2spice -o /scratch/jobs/5d727ad384284eafaa017738628da1fb/run/repo/analog/layout/LS_UP.ext.spice
quit -noprompt
