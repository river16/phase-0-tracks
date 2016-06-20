
#New Employee Vampire Detecting Interview

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
1900-2016 = human
1700-1900 = vampire 

puts "Our company cafeteria serves garlic bread. Should we order some for you? 
y/n)"
y = human
n= possible vampire

#Would you like to enroll in the company's health insurance?
puts "Would you like to enroll in the company's health insurance? (yes/no)"
yes = human
no = possible vampire

#Message at the end:

Puts "Actually, never mind! 
What do these questions have to do with anything? 
Let's all be friends."