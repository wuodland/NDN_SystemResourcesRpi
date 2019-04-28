# NDN Producer Consumer Script

This project will be for NDN intersts for CPU, RAM and HDD load for a debian based OS(meant to work on Raspberry Pi's)

One overall bash script is to log all system details together. Separate scripts are found inside the bash-scripts folder. They all save files to different respective text files.

**overall.sh** : use this to log system details every minute. File is outputed to cpu.txt. This file also has Hard-Drive usage logger whereas the bash-file doesn't have a separate HDD script.

The consumer and producer scripts are essentially from the GEC21 repository @ https://github.com/dibenede/ndn-tutorial-gec21/

Attribution for all other files and libraries have also been included in their respective files.