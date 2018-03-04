the_count = [1, 2, 3, 4, 5]
fruits = ['apples', 'oranges', 'pears', 'apricots']
change = [1, 'pennies', 2, 'dimes', 3, 'quarters']

# this first kind of for-loop goes through a list in a more traditional style found in other languages
# => for number in the_count
# changed to ruby syntax
the_count.each do |number|
  puts "This is count #{number}"
end

# In a more _ruby_ style, this is preferred
fruits.each do |fruit|
  puts "A fruit of type: #{fruit}"
end

# also we can go through mixed lists too. This is the same style with a different syntax
change.each {|i| puts "I got #{i}"}

puts "this is a test of Natalie's creation: "
change.each do |random|
  puts "item in the random list: #{random}"
end

# we can also build lists, first start with an empty one
elements = []

# Then use the range operator to do 0 to 5 counts
(0..5).each do |i|
  puts "adding #{i} to the list."
  #pushes the i variable on the end of the list
  elements.push(i)
  # You could also use the << function. this does the same thing!
  #elements << i
end

# now we can print them out too
elements.each {|i| puts "Element was: #{i}"}
