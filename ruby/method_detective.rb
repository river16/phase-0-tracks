# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.
# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.


"iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”

"zom".insert(1, 'o')
# => “zoom”

"enhance".center(20)
# => "    enhance    "

"Stop! You're under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"


a = "the usual"
a << " suspects"
-----
a = "the usual"
a += " suspects"
-----
b = "the usual" + " suspects"
-----
#=> "the usual suspects"
#Ruby doc: str << obj → str


a = "suspects"
a.prepend("the usual ")
# => "the usual suspects"

"The case of the disappearing last letter".chop
# => "The case of the disappearing last lette"

"The mystery of the missing first letter".delete "T"
# => "he mystery of the missing first letter"

"Elementary,    my   dear        Watson!".lstrip
# => "Elementary, my dear Watson!"

"z".ord
# => 122
# (What is the significance of the number 122 in relation to the character z?)

#In UTF-8, (and Unicode in general), one byte is not always/never = a character but codepoint represents a character - think of ord as codepoints[0], and the number depends on the String's Encoding.


a = "How many times does the letter 'a' appear in this string?".count "a"
# => 4


