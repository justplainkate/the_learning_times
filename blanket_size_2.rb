puts "I think I'm going to knit another binary baby blanket for Jackie & Adam's little one."
puts "I want the blanket to be about 120 stitches wide and am using 8 bit binary."
puts "So, I need something about #{120/8} characters long. Any ideas?"
option1 = gets.chomp
puts "Well, that has " + option1.length.to_s + " characters, we're going to need something a little shorter. Any other ideas?"
option2 = gets.chomp
puts "That's a whole lot closer, " + option2.length.to_s + "characters! Maybe I'll make the blanket that size."
puts "Or, I could try something larger with the baby's name. I wonder what Jackie will name it. What's a good first name?"
name1 = gets.chomp
puts "Oh, #{name1} that's good. How about a middle name?"
name2 = gets.chomp
puts "Hmmm... #{name1} #{name2}, I really like that."
puts "And of course the last name will be..."
name3 = gets.chomp
puts "I really like it! #{name1} #{name2} #{name3}, sounds great!"
puts "And that will be #{name1.length.to_i + name2.length.to_i + name3.length.to_i} characters, perfect size for a baby blanket!"
