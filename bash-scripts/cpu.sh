for i in `seq 0 60`; do
CPU_USAGE="`LC_ALL=C top -bn 1 |grep "Cpu(s)" | awk '{print $2+$6  }'`"
#DATE=$(date "+%Y-%m-%d %H:%M:")
CPU_USAGE="$CPU_USAGE"
echo $CPU_USAGE >> cpu.txt
sleep 1m
done