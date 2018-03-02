
#Assigns a format string to a variable called formatter
formatter = "%{first} %{second} %{third} %{fourth}"

# prints the variable formatter, with values inserted into the string
puts formatter %{first: 1, second: 2, third: 3, fourth: 4}
# prints the variable formatter, with strings inserted into the string
puts formatter %{first: "one", second: "two", third: "three", fourth: "four"}
# prints the variable formatter with boolean values inserted into the string
puts formatter % {first: true, second: false, third: true, fourth: false}
# prints the variable formatter, with the variable itself inserted into the string
puts formatter % {first: formatter, second: formatter, third: formatter, fourth: formatter}

# prints the variable formatter, with sentences inserted as strings into the string.
puts formatter % {
  first: "I had this thing.",
  second: "That you could type up right.",
  third: "But it didn't sing.",
  fourth: "So I said goodnight."
}
