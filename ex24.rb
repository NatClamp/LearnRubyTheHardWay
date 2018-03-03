puts "Let's practice everything."
puts 'You\'d need to know \'bout escapes with \\ that do \n newlines and \t tabs.'

# <<END is a "heredoc" - these are used to create a multi-line string. You use them by starting with << and an all caps word, Ruby then reads everything into a string until it sees the upcase word again
poem = <<END
\tThe lovely world
with logic so firmly planted
cannot discern \n the needs of love
nor comprehend passion from intuition
and requires an explanation
\n\t\twhere there is none.
END

puts "-----------------"
puts poem
puts "-----------------"

five = 10 - 2 + 3 - 6
puts "This should be five: #{five}"

# inside the function, the variable is temporary - when you return it, it can be assigned to a variable later (we call it 'beans' rather than 'jelly_beans' later)
def secret_formula(started)
  jelly_beans = started * 500
  jars = jelly_beans / 1000
  crates = jars / 100
  return jelly_beans, jars, crates
end

start_point = 10000
beans, jars, crates = secret_formula(start_point)

puts "With a starting point of: #{start_point}"
puts "We'd have #{beans} beans, #{jars} jars, and #{crates} crates."

# This is a C style of inserting variables into strings.
start_point = start_point / 10
puts "We can also do that this way:"
puts "We'd have %s beans, %d jars, and %d crates." % secret_formula(start_point)
