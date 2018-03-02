print "What is your name?"
name = gets.chomp
print "What's your age?"
age = gets.chomp
print "What's your favourite number?"
number1 = gets.chomp
print "What's your dog's favourite number?"
number2 = gets.chomp

puts "hey that makes #{number1.to_i + number2.to_i} and your name is #{name} and you are #{age}"
