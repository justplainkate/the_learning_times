def step(x)
  number_name = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten"]
  y = number_name[x.to_i].size
  puts "#{x} is #{y}."
  if y == 4
    puts "Four is the magic number."
    return false
  end
  y
end

puts "Give me any number and I'll tell you how four is the magic number."

response = gets.chomp

result = step(response)

while result
  result = step(result)
end


