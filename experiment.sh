#!/bin/bash

# Exp - 1
# vary num pq and inserts - total number of operations constant
# record operational latencies


#exp="I_95k_Q5k"

#mkdir /home/cc/cassandra-tester/$exp

#make the k-v workload
# cd /home/cc/K-V-Workload-Generator
# ./load_gen -I 95000 -Q 5000
# mv ./workload.txt /home/cc/cassandra-tester/$exp/workload.txt

# memtable="trie"
# cd /home/cc/cassandra-tester/$exp
# # mkdir "$memtable"
# cd $memtable
# python3 ../../workload_converter.py /home/cc/cassandra-tester/$exp/workload.txt $memtable
# /home/cc/cassandra/bin/cqlsh -f /home/cc/cassandra-tester/$exp/$memtable/commands.cql > ./out.txt

# memtable="skiplist"
# mkdir /home/cc/cassandra-tester/$exp/$memtable
# cd /home/cc/cassandra-tester/$exp/$memtable
# python3 /home/cc/cassandra-tester/workload_converter.py /home/cc/cassandra-tester/$exp/workload.txt $memtable 
# /home/cc/cassandra/bin/cqlsh -f /home/cc/cassandra-tester/$exp/$memtable/commands.cql > ./out.txt



exp="I_80k_Q20k"
mkdir /home/cc/cassandra-tester/$exp

#make the k-v workload
cd /home/cc/K-V-Workload-Generator
./load_gen -I 80000 -Q 20000
mv ./workload.txt /home/cc/cassandra-tester/$exp/workload.txt

memtable="trie"
cd /home/cc/cassandra-tester/$exp
mkdir "$memtable"
cd $memtable
python3 ../../workload_converter.py /home/cc/cassandra-tester/$exp/workload.txt $memtable
/home/cc/cassandra/bin/cqlsh -f /home/cc/cassandra-tester/$exp/$memtable/commands.cql > ./out.txt

memtable="skiplist"
mkdir /home/cc/cassandra-tester/$exp/$memtable
cd /home/cc/cassandra-tester/$exp/$memtable
python3 /home/cc/cassandra-tester/workload_converter.py /home/cc/cassandra-tester/$exp/workload.txt $memtable 
/home/cc/cassandra/bin/cqlsh -f /home/cc/cassandra-tester/$exp/$memtable/commands.cql > ./out.txt


exp="I_50k_Q50k"
mkdir /home/cc/cassandra-tester/$exp

#make the k-v workload
cd /home/cc/K-V-Workload-Generator
./load_gen -I 50000 -Q 50000
mv ./workload.txt /home/cc/cassandra-tester/$exp/workload.txt

memtable="trie"
cd /home/cc/cassandra-tester/$exp
mkdir "$memtable"
cd $memtable
python3 ../../workload_converter.py /home/cc/cassandra-tester/$exp/workload.txt $memtable
/home/cc/cassandra/bin/cqlsh -f /home/cc/cassandra-tester/$exp/$memtable/commands.cql > ./out.txt

memtable="skiplist"
mkdir /home/cc/cassandra-tester/$exp/$memtable
cd /home/cc/cassandra-tester/$exp/$memtable
python3 /home/cc/cassandra-tester/workload_converter.py /home/cc/cassandra-tester/$exp/workload.txt $memtable 
/home/cc/cassandra/bin/cqlsh -f /home/cc/cassandra-tester/$exp/$memtable/commands.cql > ./out.txt


exp="I_20k_Q80k"
mkdir /home/cc/cassandra-tester/$exp

#make the k-v workload
cd /home/cc/K-V-Workload-Generator
./load_gen -I 20000 -Q 80000
mv ./workload.txt /home/cc/cassandra-tester/$exp/workload.txt

memtable="trie"
cd /home/cc/cassandra-tester/$exp
mkdir "$memtable"
cd $memtable
python3 ../../workload_converter.py /home/cc/cassandra-tester/$exp/workload.txt $memtable
/home/cc/cassandra/bin/cqlsh -f /home/cc/cassandra-tester/$exp/$memtable/commands.cql > ./out.txt

memtable="skiplist"
mkdir /home/cc/cassandra-tester/$exp/$memtable
cd /home/cc/cassandra-tester/$exp/$memtable
python3 /home/cc/cassandra-tester/workload_converter.py /home/cc/cassandra-tester/$exp/workload.txt $memtable 
/home/cc/cassandra/bin/cqlsh -f /home/cc/cassandra-tester/$exp/$memtable/commands.cql > ./out.txt


exp="I_5k_Q95k"
mkdir /home/cc/cassandra-tester/$exp

#make the k-v workload
cd /home/cc/K-V-Workload-Generator
./load_gen -I 5000 -Q 95000
mv ./workload.txt /home/cc/cassandra-tester/$exp/workload.txt

memtable="trie"
cd /home/cc/cassandra-tester/$exp
mkdir "$memtable"
cd $memtable
python3 ../../workload_converter.py /home/cc/cassandra-tester/$exp/workload.txt $memtable
/home/cc/cassandra/bin/cqlsh -f /home/cc/cassandra-tester/$exp/$memtable/commands.cql > ./out.txt

memtable="skiplist"
mkdir /home/cc/cassandra-tester/$exp/$memtable
cd /home/cc/cassandra-tester/$exp/$memtable
python3 /home/cc/cassandra-tester/workload_converter.py /home/cc/cassandra-tester/$exp/workload.txt $memtable 
/home/cc/cassandra/bin/cqlsh -f /home/cc/cassandra-tester/$exp/$memtable/commands.cql > ./out.txt
