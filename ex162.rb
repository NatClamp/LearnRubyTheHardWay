filename = ARGV.first

text = open(filename)

puts "Here's your file, #{filename}! "
print text.read

text.close
