for i in `seq 0 60`; do
RAM_USAGE=$"`LC_ALL=C free -m | awk '/Mem:/ { printf("%3.1f%%", $3/$2*100) }'`"

DATE=$(date "+%Y-%m-%d %H:%M:")

RAM_USAGE="$DATE RAM: $RAM_USAGE"

echo $RAM_USAGE >> ram.txt
sleep 1m
done