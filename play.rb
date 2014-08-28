n = gets.to_i

def questioning
  puts "What would you like Dot Dot to do?"
  request = gets.chomp
  return false if request == "stop"
  
  puts "You say, Dot Dot, please #{request}"
  puts "Dot Dot's response:"
  
  puts "Dot Dot #{request}."
  puts "Ben #{request}, too."
  puts "Kate #{request}, too."
  puts "Nick #{request}, too."
  true
end

while n == 1
  break unless questioning
end