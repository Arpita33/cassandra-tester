#!/bin/bash

# Exp - 2
# vary rq selectivity total number of operations (inserts and range queries) constant
# record operational latencies

inserts=20000
range_queries=200

# rq_selectivity=0.05
# exp=RQ_0.05
# mkdir /home/cc/cassandra-tester/$exp
# cd /home/cc/K-V-Workload-Generator
# ./load_gen -I 20000 -S 200 -Y 0.05
# mv ./workload.txt /home/cc/cassandra-tester/$exp/workload.txt

# memtable="trie"
# cd /home/cc/cassandra-tester/$exp
# mkdir "$memtable"
# cd $memtable
# python3 ../../workload_converter.py /home/cc/cassandra-tester/$exp/workload.txt $memtable
# /home/cc/cassandra/bin/cqlsh -f /home/cc/cassandra-tester/$exp/$memtable/commands.cql > ./out.txt

# memtable="skiplist"
# mkdir /home/cc/cassandra-tester/$exp/$memtable
# cd /home/cc/cassandra-tester/$exp/$memtable
# python3 /home/cc/cassandra-tester/workload_converter.py /home/cc/cassandra-tester/$exp/workload.txt $memtable 
# /home/cc/cassandra/bin/cqlsh -f /home/cc/cassandra-tester/$exp/$memtable/commands.cql > ./out.txt



# rq_selectivity=0.1

# exp=RQ_0.1
# mkdir /home/cc/cassandra-tester/$exp
# cd /home/cc/K-V-Workload-Generator
# ./load_gen -I 20000 -S 200 -Y 0.1
# mv ./workload.txt /home/cc/cassandra-tester/$exp/workload.txt

# memtable="trie"
# cd /home/cc/cassandra-tester/$exp
# mkdir "$memtable"
# cd $memtable
# python3 ../../workload_converter.py /home/cc/cassandra-tester/$exp/workload.txt $memtable
# /home/cc/cassandra/bin/cqlsh -f /home/cc/cassandra-tester/$exp/$memtable/commands.cql > ./out.txt

# memtable="skiplist"
# mkdir /home/cc/cassandra-tester/$exp/$memtable
# cd /home/cc/cassandra-tester/$exp/$memtable
# python3 /home/cc/cassandra-tester/workload_converter.py /home/cc/cassandra-tester/$exp/workload.txt $memtable 
# /home/cc/cassandra/bin/cqlsh -f /home/cc/cassandra-tester/$exp/$memtable/commands.cql > ./out.txt


rq_selectivity=0.2

exp=RQ_0.2
# mkdir /home/cc/cassandra-tester/$exp
# cd /home/cc/K-V-Workload-Generator
# ./load_gen -I 20000 -S 200 -Y 0.2
# mv ./workload.txt /home/cc/cassandra-tester/$exp/workload.txt

# memtable="trie"
# cd /home/cc/cassandra-tester/$exp
# mkdir "$memtable"
# cd $memtable
# python3 ../../workload_converter.py /home/cc/cassandra-tester/$exp/workload.txt $memtable
# /home/cc/cassandra/bin/cqlsh -f /home/cc/cassandra-tester/$exp/$memtable/commands.cql > ./out.txt

memtable="skiplist"
mkdir /home/cc/cassandra-tester/$exp/$memtable
cd /home/cc/cassandra-tester/$exp/$memtable
python3 /home/cc/cassandra-tester/workload_converter.py /home/cc/cassandra-tester/$exp/workload.txt $memtable 
/home/cc/cassandra/bin/cqlsh -f /home/cc/cassandra-tester/$exp/$memtable/commands.cql > ./out.txt



# rq_selectivity=0.3

# exp=RQ_0.3
# mkdir /home/cc/cassandra-tester/$exp
# cd /home/cc/K-V-Workload-Generator
# ./load_gen -I 20000 -S 200 -Y 0.3
# mv ./workload.txt /home/cc/cassandra-tester/$exp/workload.txt

# memtable="trie"
# cd /home/cc/cassandra-tester/$exp
# mkdir "$memtable"
# cd $memtable
# python3 ../../workload_converter.py /home/cc/cassandra-tester/$exp/workload.txt $memtable
# /home/cc/cassandra/bin/cqlsh -f /home/cc/cassandra-tester/$exp/$memtable/commands.cql > ./out.txt

# memtable="skiplist"
# mkdir /home/cc/cassandra-tester/$exp/$memtable
# cd /home/cc/cassandra-tester/$exp/$memtable
# python3 /home/cc/cassandra-tester/workload_converter.py /home/cc/cassandra-tester/$exp/workload.txt $memtable 
# /home/cc/cassandra/bin/cqlsh -f /home/cc/cassandra-tester/$exp/$memtable/commands.cql > ./out.txt


# rq_selectivity=0.4

# exp=RQ_0.4
# mkdir /home/cc/cassandra-tester/$exp
# cd /home/cc/K-V-Workload-Generator
# ./load_gen -I 20000 -S 200 -Y 0.4
# mv ./workload.txt /home/cc/cassandra-tester/$exp/workload.txt

# memtable="trie"
# cd /home/cc/cassandra-tester/$exp
# mkdir "$memtable"
# cd $memtable
# python3 ../../workload_converter.py /home/cc/cassandra-tester/$exp/workload.txt $memtable
# /home/cc/cassandra/bin/cqlsh -f /home/cc/cassandra-tester/$exp/$memtable/commands.cql > ./out.txt

# memtable="skiplist"
# mkdir /home/cc/cassandra-tester/$exp/$memtable
# cd /home/cc/cassandra-tester/$exp/$memtable
# python3 /home/cc/cassandra-tester/workload_converter.py /home/cc/cassandra-tester/$exp/workload.txt $memtable 
# /home/cc/cassandra/bin/cqlsh -f /home/cc/cassandra-tester/$exp/$memtable/commands.cql > ./out.txt



# rq_selectivity=0.5

# exp=RQ_0.5
# mkdir /home/cc/cassandra-tester/$exp
# cd /home/cc/K-V-Workload-Generator
# ./load_gen -I 20000 -S 200 -Y 0.5
# mv ./workload.txt /home/cc/cassandra-tester/$exp/workload.txt

# memtable="trie"
# cd /home/cc/cassandra-tester/$exp
# mkdir "$memtable"
# cd $memtable
# python3 ../../workload_converter.py /home/cc/cassandra-tester/$exp/workload.txt $memtable
# /home/cc/cassandra/bin/cqlsh -f /home/cc/cassandra-tester/$exp/$memtable/commands.cql > ./out.txt

# memtable="skiplist"
# mkdir /home/cc/cassandra-tester/$exp/$memtable
# cd /home/cc/cassandra-tester/$exp/$memtable
# python3 /home/cc/cassandra-tester/workload_converter.py /home/cc/cassandra-tester/$exp/workload.txt $memtable 
# /home/cc/cassandra/bin/cqlsh -f /home/cc/cassandra-tester/$exp/$memtable/commands.cql > ./out.txt




# rq_selectivity=0.6

# exp=RQ_0.6
# mkdir /home/cc/cassandra-tester/$exp
# cd /home/cc/K-V-Workload-Generator
# ./load_gen -I 20000 -S 200 -Y 0.6
# mv ./workload.txt /home/cc/cassandra-tester/$exp/workload.txt

# memtable="trie"
# cd /home/cc/cassandra-tester/$exp
# mkdir "$memtable"
# cd $memtable
# python3 ../../workload_converter.py /home/cc/cassandra-tester/$exp/workload.txt $memtable
# /home/cc/cassandra/bin/cqlsh -f /home/cc/cassandra-tester/$exp/$memtable/commands.cql > ./out.txt

# memtable="skiplist"
# mkdir /home/cc/cassandra-tester/$exp/$memtable
# cd /home/cc/cassandra-tester/$exp/$memtable
# python3 /home/cc/cassandra-tester/workload_converter.py /home/cc/cassandra-tester/$exp/workload.txt $memtable 
# /home/cc/cassandra/bin/cqlsh -f /home/cc/cassandra-tester/$exp/$memtable/commands.cql > ./out.txt


# rq_selectivity=0.7

# exp=RQ_0.7
# mkdir /home/cc/cassandra-tester/$exp
# cd /home/cc/K-V-Workload-Generator
# ./load_gen -I 20000 -S 200 -Y 0.7
# mv ./workload.txt /home/cc/cassandra-tester/$exp/workload.txt

# memtable="trie"
# cd /home/cc/cassandra-tester/$exp
# mkdir "$memtable"
# cd $memtable
# python3 ../../workload_converter.py /home/cc/cassandra-tester/$exp/workload.txt $memtable
# /home/cc/cassandra/bin/cqlsh -f /home/cc/cassandra-tester/$exp/$memtable/commands.cql > ./out.txt

# memtable="skiplist"
# mkdir /home/cc/cassandra-tester/$exp/$memtable
# cd /home/cc/cassandra-tester/$exp/$memtable
# python3 /home/cc/cassandra-tester/workload_converter.py /home/cc/cassandra-tester/$exp/workload.txt $memtable 
# /home/cc/cassandra/bin/cqlsh -f /home/cc/cassandra-tester/$exp/$memtable/commands.cql > ./out.txt


# rq_selectivity=0.8

# exp=RQ_0.8
# mkdir /home/cc/cassandra-tester/$exp
# cd /home/cc/K-V-Workload-Generator
# ./load_gen -I 20000 -S 200 -Y 0.8
# mv ./workload.txt /home/cc/cassandra-tester/$exp/workload.txt

# memtable="trie"
# cd /home/cc/cassandra-tester/$exp
# mkdir "$memtable"
# cd $memtable
# python3 ../../workload_converter.py /home/cc/cassandra-tester/$exp/workload.txt $memtable
# /home/cc/cassandra/bin/cqlsh -f /home/cc/cassandra-tester/$exp/$memtable/commands.cql > ./out.txt

# memtable="skiplist"
# mkdir /home/cc/cassandra-tester/$exp/$memtable
# cd /home/cc/cassandra-tester/$exp/$memtable
# python3 /home/cc/cassandra-tester/workload_converter.py /home/cc/cassandra-tester/$exp/workload.txt $memtable 
# /home/cc/cassandra/bin/cqlsh -f /home/cc/cassandra-tester/$exp/$memtable/commands.cql > ./out.txt



# rq_selectivity=0.9

# exp=RQ_0.9
# mkdir /home/cc/cassandra-tester/$exp
# cd /home/cc/K-V-Workload-Generator
# ./load_gen -I 20000 -S 200 -Y 0.9
# mv ./workload.txt /home/cc/cassandra-tester/$exp/workload.txt

# memtable="trie"
# cd /home/cc/cassandra-tester/$exp
# mkdir "$memtable"
# cd $memtable
# python3 ../../workload_converter.py /home/cc/cassandra-tester/$exp/workload.txt $memtable
# /home/cc/cassandra/bin/cqlsh -f /home/cc/cassandra-tester/$exp/$memtable/commands.cql > ./out.txt

# memtable="skiplist"
# mkdir /home/cc/cassandra-tester/$exp/$memtable
# cd /home/cc/cassandra-tester/$exp/$memtable
# python3 /home/cc/cassandra-tester/workload_converter.py /home/cc/cassandra-tester/$exp/workload.txt $memtable 
# /home/cc/cassandra/bin/cqlsh -f /home/cc/cassandra-tester/$exp/$memtable/commands.cql > ./out.txt
