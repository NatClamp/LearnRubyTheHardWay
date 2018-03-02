#Using the argument variable given and assigning it to the variable "filename"
filename = ARGV.first

#just some text and then asks for the user to give an answer
puts "We're going to erase #{filename}"
puts "If you don't want that, hit CTRL-C (^C)."
puts "If you do want that, hit RETURN."

$stdin.gets

# Writes some text. Opens the text file you assigned to "filename" in 'w' mode - this means write-only, which truncates the existing file. Assigns this new blank file to the variable "target"
puts "Opening the file..."
target = open(filename, 'w')

# Prints some text. Uses the truncate command on the "target" variable and moves to the beginning of the file
puts "Truncating the file.  Goodbye!"
target.truncate(0)

puts "Now I'm going to ask you for three lines."

#prompts the user to enter strings to write into the file and assigns them to variable names
print "line 1: "
line1 = $stdin.gets.chomp
print "line 2: "
line2 = $stdin.gets.chomp
print "line 3: "
line3 = $stdin.gets.chomp

puts "I'm going to write these to the file."

# uses the write command to write lines that the user entered to the empty file. Adds carriage returns in between each line of text

target.write("#{line1}\n#{line2}\n#{line3}\n")

#closes the file
puts "And finally, we close it."
target.close
