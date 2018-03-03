# Unpacks the file you read in as input_file
input_file = ARGV.first

# Define a function that prints the text file
def print_all(f)
  puts f.read
end

# Defines a function that seeks to the first byte
def rewind(f)
  f.seek(0)
end

# Defines a function that prints a the line number (given by line_count) and the corresponding line of the text (given by f.gets.chomp)
def print_a_line(line_count, f)
  puts "#{line_count}, #{f.gets.chomp}"
end

# Opens the text file
current_file = open(input_file)

# prints a sentence, line break, then calls the print_all function using the opened file as a variable
puts "First let's print the whole file: \n"
print_all(current_file)

# Prints a sentence and then seeks the start of the opened text file
puts "Now let's rewind, kind of like a tape."
rewind(current_file)

# Prints a sentence and then enters the current line number and calls the print_a_line function, using the current line number and opened text file, which is augmented by the current line number. Every instance, the current line number increases by one.
puts "Lets print three lines:"

current_line = 1
print_a_line(current_line, current_file)

current_line += 1
print_a_line(current_line, current_file)

current_line += 1
print_a_line(current_line, current_file)
