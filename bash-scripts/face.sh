nfdc face create tcp4://192.168.0.102 &
sleep 5
nfdc face create tcp4://192.168.0.100 &
sleep 5
nfdc route add /ndn/abc/pi2/ tcp4://192.168.0.102 & 
sleep 5
nfdc route add /ndn/abc/pi1/
sleep 5
