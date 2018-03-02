first = ARGV

print "Give me a number: "
number = $stdin.gets.chomp.to_i

bigger = number * 100
puts "A bigger number is #{bigger}."

print "Give me another number: "
another = first
number = another.to_i

smaller = number / 100
puts "A smaller number is #{smaller}."
