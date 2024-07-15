import argparse

def convert_file(input_path, memtable, outfile):
    print(memtable)
    f = open(input_path, 'r')
    lines = f.readlines()
    f_out = open(outfile, 'w')
    f_out.write("DROP KEYSPACE IF EXISTS schema1;\n")
    f_out.write("CREATE KEYSPACE schema1 WITH replication = { 'class' : 'SimpleStrategy', 'replication_factor' : 1 };\n")
    f_out.write("USE schema1;\n")
    f_out.write("CREATE TABLE key_value (key varchar PRIMARY KEY,value varchar) WITH memtable = '"+memtable+"';\n")

    for line in lines:
        #print(line[0])
        parts = line.split(" ");
        if parts[0] == 'I':
            key = parts[1]
            value = parts[2].strip()
            f_out.write("INSERT INTO key_value (key, value) VALUES ('"+key+"', '"+value+"');\n")

        if parts[0] == 'Q':
            key = parts[1].strip()
            f_out.write("SELECT value FROM key_value WHERE key = '"+key+"';\n")
        
        if parts[0] == 'S':
            key1 = parts[1].strip()
            key2 = parts[2].strip()
            f_out.write("SELECT value FROM key_value WHERE key > '"+key1+"' AND key < '"+key2+"' ALLOW FILTERING;\n")

        if parts[0] == 'U':
            key = parts[1].strip()
            value = parts[2].strip()
            f_out.write("UPDATE key_value SET value = '"+value+"' WHERE key = '"+key+"';\n")
        
        if parts[0] == 'D':
            key = parts[1].strip()
            f_out.write("DELETE FROM key_value WHERE key = '"+key+"';\n")
        
        #Cassandra error for range queries: message="Only EQ and IN relation are supported on the partition key (unless you use the token() function) for DELETE statements"
        # if parts[0] == 'R':
        #     key1 = parts[1].strip()
        #     key2 = parts[2].strip()
        #     f_out.write("DELETE FROM key_value WHERE key BETWEEN '"+key1+"' AND '"+key2+"';\n")



if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('input_path', type=str, help='The path of the file to process.')
    parser.add_argument('memtable', type=str, help='The type of memtable.')

    args = parser.parse_args()
    
    infilepath = args.input_path
    memtable = args.memtable

    convert_file(infilepath, memtable, "commands.cql")
    #bin/cqlsh -f commands.cql > output.txt