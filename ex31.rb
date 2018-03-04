puts "You enter a dark room with two doors. Do you go through door #1, #2 or #3?"

print "> "
door = $stdin.gets.chomp

if door == "1"
  puts "There's a giant bear here eating a cheese cake. What do you do?"
  puts "1. Take the cake."
  puts "2. Scream at the bear."

  print "> "
  bear = $stdin.gets.chomp

  if bear == "1"
    puts "The bear eats your face off. Good job!"
  elsif bear == "2"
    puts "The bear eats your legs off. Good job!"
  else
    puts "Well, doing %s is probably better. Bear runs away." % bear
  end

elsif door == "2"
  puts "You stare into the endless abyss at Cthulhu's retina."
  puts "1. Blueberries."
  puts "2. Yellow jacket clothespins."
  puts "3. Understanding revolvers yelling melodies."

  print "> "
  insanity = $stdin.gets.chomp

  if insanity == "1" || insanity == "2"
    puts "Your body survives powered by a mind of jello. Good job! \n You can save your brain by pressing a button, but which?"
    puts "1. green"
    puts "2. red"

    print "> "
    button = $stdin.gets.chomp

    if button == "1"
      puts "Well done! Your brain is now intact again. Though it isn't your brain. It's Trump's. Well, you did choose a red button. Your own fault."
    elsif button == "2"
      puts "No, silly. Green buttons never do anything. They're just there as a placebo. You jab the buttons at road crossings and on the doors of tubes, don't you?"
    else
      puts "Well not reading instructions was the best way to go this time. Your brain is now intact."
    end
  else
    puts "The insanity rots your eyes into a pool of mush. Good job!"
  end

elsif door == "3"
  puts "You're now stuck in a parallel universe, filled with doors to open. One will get you home... maybe. Better start opening."
else
  puts "You stumble around and fall on a knife and die. Good job!"
end
