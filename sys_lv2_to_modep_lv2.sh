#!/bin/bash
# William Hofferbert
# symlink system LV2 into MODEP lv2 dir

sys_lv2_dir=/usr/lib/lv2
modep_lv2_dir=/usr/modep/lv2

# for every plugin
for sys_lv2 in $(ls -1tr $sys_lv2_dir) ; do
  # link into modep if it's not there already
  if [ ! -e $modep_lv2_dir/$sys_lv2 ] ; then
    sudo ln -s $sys_lv2_dir/$sys_lv2 $modep_lv2_dir/$sys_lv2
  fi
done
