#!/bin/bash


(cd ..	
  #git clone git@github.com:pedrumj2/pcap_extractor
  git clone git@github.com:pedrumj2/Net_Flow_Gen
  mkdir raw
  #copy raw files in here before continueing
  mkdir csv
)

#( cd ../raw
#  I=1
#  bash_pid=$BASHPID
#  for f in *
#  do
#    children="$(ps -eo ppid | grep -w $bash_pid  | wc -l)"
#    while [ "$children" -gt "8" ]
#    do
#      sleep 20
#      children="$(ps -eo ppid | grep -w $bash_pid  | wc -l)"
#      echo $children
#    done
#    eval "../pcap_extractor/tshark_script.sh $f > ../csv/CSV2_${I} &"
#    I=$((I+1))
#  done
#  
#  wait
#)
# 
#
#( cd ../csv
#  I=1
#  bash_pid=$BASHPID
#  for f in *
#  do
#    children="$(ps -eo ppid | grep -w $bash_pid  | wc -l)"
#    while [ "$children" -gt "8" ]
#    do
#      sleep 20
#      children="$(ps -eo ppid | grep -w $bash_pid  | wc -l)"
#      echo $children
#    done
#    eval "sed -i '1s/\./_/g' ../csv/${f} &"
#    I=$((I+1))
#  done
#  
#  wait
#)
# 


I=1
bash_pid=$BASHPID
for f in ../csv/*
do
  children="$(ps -eo ppid | grep -w $bash_pid  | wc -l)"
  while [ "$children" -gt "8" ]
  do
    sleep 20
    children="$(ps -eo ppid | grep -w $bash_pid  | wc -l)"
    echo $children
  done
  eval "./imp_csv.sh fafdRE\\\$3 paper3 ${f} &"
  I=$((I+1))
done

wait

 

