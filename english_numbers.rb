def english_number number
  # We accept numbers from 0 to 100
  
  if number < 0
    return 'Please enter a number zero or greater.'
  end
  
  if number > 100
    return 'Please enter a number 100 or less.'
  end
  
  num_string = ''  # This is the string we will return.
  
  # "left" is how much of the number we still have left to write out.
  # "write" is the part we are writing out right now.
  # write and left... get it?  :)
  
  left = number
  write = left/100  # How many hundreds left?
  left = left - write*100 #Subtract off those hundreds.
  
  if write > 0
    return 'one hundred'
  end
  
  write = left/10
  