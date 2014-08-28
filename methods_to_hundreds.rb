def calculate(digits)
  digits = digits.to_s.reverse
  return 4 if digits == "0"
  
  names = [
    ["", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"], # ones place
    ["", "teen", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"], # tens place
    ["", "onehundred", "twohundred", "threehundred", "fourhundred", "fivehundred", "sixhundred", "sevenhundred", "eighthundred", "ninehundred"] # hundreds place
  ]
  
  result = 0
  digits.chars.each_with_index do |digit, place|
    result += names[place][digit.to_i].length
  end
  
  case digits.reverse.to_i
  when 10..13, 15
    result -= 1
  end
  result += "negative".length if digits.reverse.to_i < 0
  
  result
end


def step(x)
  y = calculate(x)
  puts "#{x} is #{y}."
  if y == 4
    puts "Four is the magic number."
    return false
  end
  y
end

def run
  puts "Give me any number and I'll tell you how four is the magic number."
  response = gets.chomp
  while response.length > 3
    puts "I can't count that high. Something under a thousand please."
    response = gets.chomp
  end
  result = step(response)
  while result
    result = step(result)
  end
end

def tests
  expectations = {
    -999 => 29,
    -1 => "negativeone".length,
    1 => 3,
    6 => 3,
    10 => 3,
    11 => 6,
    12 => 6,
    13 => 8,
    14 => 8,
    15 => 7,
    16 => 7,
    17 => 9,
    18 => 9,
    19 => 8,
    333 => (18+5)
  }
  expectations.each do |k,v|
    result = (calculate(k) == v)
    if result == false
      puts "calculate(#{k}) FAILED, returned #{calculate(k)} expected #{v}"  
    else
      puts "calculate(#{k}) passed."
    end
  end
end

puts "Running tests..."
tests()
puts
puts

run()
