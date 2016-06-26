#Using the String docs, identify the culprit 
#(or several suspects -- sometimes more than one method matches 
#the description, so check carefully!). 
#Lastly, make some real method calls to test your findings 
#in hopes of providing evidence to the prosecutor.

# Replace in the "<???>" with the 
# appropriate method (and arguments, 
#if any). Uncomment the calls to catch 
#these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

#1 
"iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”
answer = "ThiS Is CoOl".swapcase
p answer
# > tHIs iS cOoL

#2 
p "zom".insert(2, "o")
# => “zoom”

#3
p "enhance".center(15)
#=> "    enhance    "
p "Space".center(10)
# >> "  Space   "

#4 
p "Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"
p "Where are my shoes?!!".upcase 
# "WHERE ARE MY SHOES?!!"


#5 
p "the usual".insert(-1, " suspects")
p "the usual".ljust(18, " suspects")
#=> "the usual suspects"

#6
p " suspects".insert(0, "the usual ")
p " suspects".prepend("the usual ")
# => "the usual suspects"

#7 
p "The case of the disappearing last letter".slice(0..-2)
p "The case of the disappearing last letter"[0..-2]
p "The case of the disappearing last letter".chop
# => "The case of the disappearing last lette"

#8 
p "The mystery of the missing first letter".slice(1..-1)
p "The mystery of the missing first letter"[1..-1]
p "The mystery of the missing first letter".slice!(1..-1)
p "The mystery of the missing first letter".reverse.chop.reverse
# => "he mystery of the missing first letter"

#9 
p "Elementary,    my   dear        Watson!".gsub(/\s+/, " ").strip
p "Elementary,    my   dear        Watson!".squeeze(' ').strip
# => "Elementary, my dear Watson!"

#10
"z".each_byte do |c|
    puts c 
end 

p "z".ord
# => 122 
# (What is the significance of the number 122 in relation to the character z?)
#My answer - "z" is #122 on the list of ASCII printable characters 

#11 
p "How many times does the letter 'a' appear in this string?".count('a')
p "How many times does the letter 'a' appear in this string?".scan('a').count
# => 4