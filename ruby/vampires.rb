
#New Employee Vampire Detecting Interview

times_to_loop = 0
	loop do

#What is your name?
puts "What is your name?"
employee_name = gets.chomp
puts "Hi, #{employee_name}. Nice to meet you."

#How old are you? 
puts "How old are you?"
employee_age = gets.chomp.to_i 
puts "#{employee_age}"

#What year were you born?
puts "What year were you born?"
employee_birth_year = gets.chomp.to_i
1900-2016 = human_age
1700-1900 = vampire_age

#age_test

if age_test == (2016- employee_birth_year)
	1900-2016 = human_age
	1700-1900 = vampire_age
			age_test = true
		else
			age_test = false
		end

puts "Our company cafeteria serves garlic bread. Should we order some for you? 
y/n)"
y = wants_garlic
n = no_garlic

#Would you like to enroll in the company's health insurance?
puts "Would you like to enroll in the company's health insurance? (yes/no)"
yes = wants_health_ins
no = no_health_ins

if age_test && (wants_garlic || wants_health_ins) == true
			puts "Probably not a vampire."
elsif age_test == false && (wants_garlic || wants_health_ins) == true
			puts "Probably a vampire."
elsif age_test || wants_garlic || wants_health_ins == false
			puts "Probably a vampire."
			else
			puts "Who really knows? Let's just ask the source ;)"
		end
loop do

#Message at the end:

Puts "Actually, never mind! 
What do these questions have to do with anything? 
Let's all be friends."