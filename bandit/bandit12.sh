cat data.txt # shows data2.bin
xxd -r data.txt data
file data # shows it is gzip max compression
cat data | gzip -d > data2
file data2 # shows bzip2
cat data2 | bzip2 -d > data4.bin
file data4.bin # shows gzip
cat data4.bin | gzip -d > data5.bin
file data5.bin # shows tar archive
tar -xvf data5.bin > data6.bin
file data6.bin # shows bzip2
cat data6.bin | bzip2 -d > data8.bin
cat data8.bin | gzip -d
# wbWdlBxEir4CaE8LaPhauuOo6pwRmrDw
