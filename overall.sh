for i in `seq 0 60`; do
CPU_USAGE=$"`LC_ALL=C top -bn 1 |grep "Cpu(s)" | awk '{print $2+$6  }'`% RAM `free -m | awk '/Mem:/ { printf("%3.1f%%", $3/$2*100) }'` HDD `df -h / | awk '/\// {print $(NF-1)}'`"

DATE=$(date "+%Y-%m-%d %H:%M:")

CPU_USAGE="$DATE CPU: $CPU_USAGE"

echo $CPU_USAGE >> overall.txt
sleep 1m
done