#!/bin/bash
mem_used=`free -m |grep '^Mem:' |awk '{print $3}'`
mem_total=`free -m |grep '^Mem:' |awk '{print $2}'`
mem_rate=$((mem_used*100/mem_total));
echo "当前内存占用 $mem_rate %";