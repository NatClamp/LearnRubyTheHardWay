from_file, to_file = ARGV

# we could do these two on one line, how?
indata = open(from_file).read


out_file = open(to_file, 'w')
out_file.write(indata)


out_file.close
indata.close
