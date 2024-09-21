
#!/bin/bash

wget https://s3.amazonaws.com/ds2002-resources/labs/lab3-bundle.tar.gz
tar -xzvf lab3-bundle.tar.gz
cat lab3_data.tsv | tr -s '\n' > new_lab3_data.tsv
tr '\t' ',' < new_lab3_data.tsv > lab3_data.csv
lines = $(( $(wc -l < lab3_data.csv) -1 ))
echo "$lines"

tar -czvf converted-archive.tar.gz lab3_data.csv

