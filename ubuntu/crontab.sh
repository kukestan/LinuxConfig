#!/bin/bash
echo -e "\n********************$(date)**********************"
echo 3 >/proc/sys/vm/drop_caches
free -mh
