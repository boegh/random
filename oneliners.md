Random blobs...

Get dictionary words that are 10 characters long:

cat da_DK.dic | awk -F"/" '{print $1}' | awk 'length($0) == 10' | more
