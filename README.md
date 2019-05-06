# NDN Producer Consumer Script

This project will be for NDN intersts for CPU, RAM and HDD load for a debian based OS(meant to work on Raspberry Pi's)

Required dependencies for RPi's :

1) [**NDN-cxx**](https://github.com/named-data/ndn-cxx/) <br/>
2) [**NFD**](https://github.com/named-data/nfd/) <br/>
3) [**PyNDN2**](https://github.com/named-data/PyNDN2/) <br/>

One overall bash script is to log all system details together. Separate scripts are found inside the bash-scripts folder. They all save files to different respective text files. <br/>
Note:as of last commit, it's better to use the individual scripts for system monitoring.

**overall.sh** : use this to log system details every minute. File is outputed to cpu.txt. This file also has Hard-Drive usage logger whereas the bash-file doesn't have a separate HDD script.

The consumer and producer scripts are essentially from the GEC21 repository @ https://github.com/dibenede/ndn-tutorial-gec21/

Attribution for all other files and libraries have also been included in their respective files.

**To execute, use the following commands:** 

python producer.py -n /ndn/network <br/>
python consumer.py -u /ndn/network <br/>

Insert the correct the network network prefix for interest routing. <br/>

The face.sh file is adding the faces that are involved in the network. Edit them with the intended, correct IP addresses and routes to get them to work. Similarly, while running exec.sh(on every node where monitoring is required) don't forget to run it with the correct rotues. <br/>

ram.sh and cpu.sh files can be run in the background to create the logs. They are quite simple and easy to use. <br/>

If there is any problem, you can always raise an issue and ask your questions. 

