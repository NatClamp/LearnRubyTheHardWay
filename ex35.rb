# the gold_room function is defined. Some text is printed and a prompt used. User answer is assigned to the variable 'choice',
def gold_room
  puts "This room is full of gold. How much do you take?"

  print "> "
  choice = $stdin.gets.chomp

# If statement - if the user answer includes a 0 or a 1, then the answer is converted to an integer and assigned to the how_much variable. Else, the dead function is called.
#  if choice.include?("0") || choice.include?("1")
#    how_much = choice.to_i
#  else
#    dead("Man, learn to type a number.")
#  end

# This way of asking for a number is stupid because if you haven't entered a 0 or a 1, then you die, but it doesn't give any kind of indication that that's what's needed before hand.

# This way is also kind of stupid because just because it includes those digits, doesn't mean the answer is an integer, and when it gets converted on the second line of code, it gets set to 0...
#if choice.include?("0") || choice.include?("1") || choice.include?("2") || choice.include?("3")|| choice.include?("4")|| choice.include?("5")|| choice.include?("6")|| choice.include?("7")|| choice.include?("8")|| choice.include?("9")
#  how_much = choice.to_i
#  print how_much
#else
#  dead("Man, learn to type a number.")
#end

# This kind of works but not really
#  if choice.is_a? Integer
#    how_much = choice.to_i
#    print how_much
#  else
#    dead("Man, learn to type a number.")
#  end

# This kind of works, but the same happens as above.
#  if choice.to_i.is_a? Numeric
#    how_much = choice.to_i
#  else
#    dead("Man learn how to type a number.")
#  end

# This block converts the user answer to an integer, like before, and then back to a string. If this string is the same as the original string, that means it was a numebr that was entered (because if it was something like 'A', it would have been converted to 0 with to_i, and then it wouldn't have been equal to the original string.)!
  if choice.to_i.to_s == choice
    how_much = choice.to_i
  else
    dead("Man learn how to type a number.")
  end



#Another if statement - if the user answer is less than 50, something is printed and then the script is exited. Otherwise, the dead function is called.
  if how_much < 50
    puts " Nice, you're not greedy, you win!"
    exit(0)
  else
    puts "Are you sure?"
    puts "Yes or No"
    puts "> "
    sure = $stdin.gets.chomp

    if sure == "Yes"
      dead("Ya greedy bastard! I'll 'av ya'!")
    elsif sure == "No"
      puts "Correct answer, put a bit back and then you are dismissed. You survive another day - but I'm watching you."
      exit(0)
    else
      dead("You're really bad at decisions. You die of ethically induced guilt mixed with a tinge of greed.")
    end
  end
end

# bear_room function is defined. Some text is printed, and the bear_moved variable is set to false.
def bear_room
  puts "There is a bear."
  puts "The bear has a bunch of honey."
  puts "The fat bear is in front of another door."
  puts "How are you going to move the bear?"
  bear_moved = false

# While true makes an infinite loop! The function will continue to ask until one of the correct answers are given.
  while true
    print "> "
    choice = $stdin.gets.chomp

# If statement, if the user enters EXACTLY 'take honey', the dead function is called, if they enter 'taunt bear' whilst the bear_moved is not true, the bear_moved becomes true. If the user enters 'taunt bear' AND the bear_moved variable is already true, the dead function is called. When the user enters 'open door' AND the bear_moved variable is true, the gold_room function is called. If none of these things are entered, some text is printed.
    if choice == "take honey"
      dead("The bear looks at you and then slaps your face off.")
    elsif choice == "taunt bear" && !bear_moved
      puts "The bear has moved from the door. You can go through it now."
      bear_moved = true
    elsif choice == "taunt bear"  && bear_moved
      dead("The bear gets pissed off and chews your leg off.")
    elsif choice == "open door" && bear_moved
      gold_room
    else
      puts "I got no idea what that means."
    end
  end
end

# Defines a function called 'cthulhu_room' and prints some stuff, a prompt and then assigns the user's answer to the variable 'choice'
def cthulhu_room
  puts "Here you see the great evil Cthulhu."
  puts "He, it, whatever stares at you and you go insane"
  puts "Do you flee for your life or eat your head?"

  print "> "
  choice = $stdin.gets.chomp

# If statement - if the user's answer includes the word 'flee', the start function is called
# If the user's answer includes the word 'head', the dead function is called. Else, the cthulhu_room function is called
  if choice.include? "flee"
    start
  elsif choice.include? "head"
    dead("Well that was tasty!")
  else
    cthulhu_room
  end
end

# Function named 'dead' is defined, taking 'why' as the argument. The function prints the argument given when it's called, and then 'good job'
# Exit(0) aborts the script.
def dead(why)
  puts why, "Good job!"
  exit(0)
end

# This is the first block that appears when the game starts.
# Function called 'start' is defined. Prints some text and a prompt, and names the user-entered text as a variable called 'choice'.
# If statement - if the user enters 'left', then the 'bear_room' function is called. If the user enters 'right', the 'cthulhu_room' function is called, else the 'dead' function is called
def start
  puts "You are in a dark room."
  puts "There is a door to your right and left."
  puts "Which one do you take?"

  print "> "
  choice = $stdin.gets.chomp

  if choice == "left"
    bear_room
  elsif choice == "right"
    cthulhu_room
  else
    dead("You stumble around the room until you starve.")
  end
end

# The start of the game only gets called right at the bottom of the script!
start
