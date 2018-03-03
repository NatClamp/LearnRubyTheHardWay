# We use def for 'define' and give the function a name
# We tell it we want *args, which is similar to ARGV but for functions
#We need to start tabbing in order to make sure the contents are contained within the function. We unpack the arguments like we did before in the first line. We print the arguments out.
def print_two(*args)
  arg1, arg2 = args
  puts "arg1: #{arg1}, arg2: #{arg2}"
end

# ok, that *args is actually pointless, we can skip unpacking the arguments and use the names we want inside the brackets, like:
def print_two_again(arg1, arg2)
  puts "arg1: #{arg1}, arg2: #{arg2}"
end

# this just takes one argument
def print_one(arg1)
  puts "arg1: #{arg1}"
end

# this one takes no arguments
def print_none()
  puts "I got nothin'."
end



print_two("Zed","Shaw")
print_two_again("Zed","Shaw")
print_one("First!")
print_none()
