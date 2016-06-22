# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

# "iNvEsTiGaTiOn".<???>
# => “InVeStIgAtIoN”
puts "InVeStIgAtIoN".swapcase!

# "zom".<???>
# => “zoom”
puts "zom".sub(/[o]/, 'oo')

# "enhance".<???>
# => "    enhance    "
puts "enhance".center(20)

# "Stop! You’re under arrest!".<???>
# => "STOP! YOU’RE UNDER ARREST!"
puts "Stop! You're under arrest!".upcase!

# "the usual".<???>
#=> "the usual suspects"
puts "the usual".insert(-1, ' suspects')

# " suspects".<???>
# => "the usual suspects"
puts " suspects".gsub(" ","the usual ")
#or
puts " suspects".sub(" ","the usual ")


# "The case of the disappearing last letter".<???>
# => "The case of the disappearing last lette"
puts "The case of the disappearing last letter".chop!

# "The mystery of the missing first letter".<???>
# => "he mystery of the missing first letter"
c = "The mystery of the missing first letter"
c.slice!(0)
puts c

# "Elementary,    my   dear        Watson!".<???>
# => "Elementary, my dear Watson!"
puts "Elementary,    my   dear        Watson!".squeeze

# "z".<???>
# => 122 
# (What is the significance of the number 122 in relation to the character z?)
puts "z".ord
#(every character on the computer is assigned a number value to represent it that is recognizable to the computer. z is assigned number value 122.)

# "How many times does the letter 'a' appear in this string?".<???>
# => 4
puts "How many times does the letter 'a' appear in this string?".count("a")