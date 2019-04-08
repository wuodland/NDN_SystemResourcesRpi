for i in `seq 0 60`; do
  #echo "Test done on `date`" >> ramusage.txt
  #echo `cat /proc/meminfo | grep Active: | sed 's/Active: //g'`  >> ramusage.txt
  #echo "" >> ramusage.txt
  echo "CPU `LC_ALL=C top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1}'`% RAM `free -m | awk '/Mem:/ { printf("%3.1f%%", $3/$2*100) }'` HDD `df -h / | awk '/\// {print $(NF-1)}'`" >> usage.txt
  sleep 1m
done