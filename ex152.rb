puts "What's your file called?"
filename = gets.chomp

txt = open(filename)

puts "Here's your file #{filename}:"
print txt.read

print "Type the filename again: "
file_again = gets.chomp

txt_again = open(file_again)

print txt_again.read
