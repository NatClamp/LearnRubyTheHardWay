# This defines the function called "cheese_and_crackers" and gives cheese_count and boxes_of_crackers as arguments
# This function prints out the numbers of cheeses and cracker boxes you enter as values
def cheese_and_crackers(cheese_count, boxes_of_crackers)
  puts "You have #{cheese_count} cheeses!"
  puts "You have #{boxes_of_crackers} boxes of crackers!"
  puts "Man that's enough for a party!"
  puts "Get a blanket. \n"
end

# You can enter the values just as simple values within the function
puts "We can just give the function numbers directly:"
cheese_and_crackers(20, 30)

# You can also give the values as variables and then enter the variable names in as the arguments
puts "OR, we can use variables from our script:"
amount_of_cheese = 10
amount_of_crackers = 50

cheese_and_crackers(amount_of_cheese, amount_of_crackers)

# You can call the function using sums as values.
puts "We can even do math inside too:"
cheese_and_crackers(10 + 20, 5 + 6)

# You can call the function with variables but include sums too.
puts "And we can combine the two, variables and math:"
cheese_and_crackers(amount_of_cheese + 100, amount_of_crackers + 1000)

puts "CHEEEESE"
