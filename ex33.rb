#i = 0
#numbers = []

#while i < 6
#  puts "At the top i is #{i}"
#  numbers.push(i)

#  i += 1
#  puts "Numbers now: ", numbers
#  puts "At the bottom i is #{i}"
#end

#puts "The numbers: "
#numbers.each {|num| puts num}

#puts "or this way..."

#numbers.each do |num|
#  puts "The numbers #{num}"
#end

#puts "or this way..."

#for num in numbers
#  puts "The numbers #{num}"
#end



#def number_list(x)

#  i = 0
#  numbers = []

#  while i < x
#    puts "At the top i is #{i}"
#    numbers.push(i)

#    i += 1
#    puts "Numbers now: ", numbers
#    puts "At the bottom i is #{i}"
#  end

#puts "The numbers: "
#numbers.each {|num| puts num}
#end

#number_list(10)

#def number_list(x, y)

#  i = 0
#  numbers = []

#  while i != x
#    puts "At the top i is #{i}"
#    numbers.push(i)

#    i += y
#    puts "Numbers now: ", numbers
#    puts "At the bottom i is #{i}"
#  end

#puts "The numbers: "
#numbers.each {|num| puts num}
#end

#number_list(10, 1)


def number_list(x)
  i = 0
  numbers = []

  (0..6).each do |i|
    puts "At the top i is #{i}"
    numbers << i
    puts "Numbers now: ", numbers
  end
end

number_list(5)
