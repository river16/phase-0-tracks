
puts "what is your name:"
name = gets.chomp.downcase

def adv_consonant(name_input)
	split_name = "#{name_input}".split(" ")
	split_name.reverse

end

arry_name = adv_consonant("#{name}")

first_position = arry_name[0]
last_split = "#{last_position}".split("")

last_position = arry_name[1]
last_split = "#{last_position}".split("")
last_split.class
	
#  Upcase first letter of name


