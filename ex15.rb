# Assigns the argument variable given to the variable called "filename"
filename = ARGV.first

# This opens the file you entered as the argument variable and assigns it to the word "txt"
txt = open(filename)

# This prints out a message, including the file name. It then prints what you assigned to the "txt" variable, and then uses a command - to "read" it.
puts "Here's your file #{filename}: "
print txt.read

#Prints some text. then asks the user for some input - the filename. It assigns this to another variable name
print "Type the filename again: "
file_again = $stdin.gets.chomp

#uses the open command to open the filename you assigned to the new variable. This is then assigned to another variable name
txt_again = open(file_again)

#this prints the result of the .read command for the variable you assigned the opened file to.
print txt_again.read

txt.close
txt_again.close

txt.closed?
txt_again.closed?
