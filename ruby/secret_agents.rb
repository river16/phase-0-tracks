#NEW EMPLOYEE SURVEY
#
#GET COUNT of how many ees will be processed during this session
#LOOP SURVEY for that count
#
puts "* * * NEW EMPLOYEE SURVEY * * * "
puts""

puts "Enter the number of surveys you will be processing today: "
  nmbr = gets.chomp
  nmbr_surveys = 0
puts""

until nmbr_surveys == nmbr.to_i

  puts "Ask the new employee the following questions and enter their responses."
  puts " "

  puts "What is their name?"
      name = gets.chomp
  puts " "

  puts "How old are they?"
      age = gets.chomp.to_i
  puts "What year were they born?"
      year = gets.chomp.to_i
      if age == 2016 - year
          age = true
      else
          age = false
      end
  puts" "

  puts "Our cafeteria serves garlic bread. Should we order some for them? Please type yes or no."
      garlic_bread = gets.chomp
      if garlic_bread == "yes"
        garlic_bread = true
      else garlic_bread = "no"
        garlic_bread = false
      end
  puts""

  puts "Would they like to enroll in the company's health insurance plan? Please type yes or no."
      insurance = gets.chomp
      if insurance == "yes"
        ins = true
      else insurance = "no"
        ins = false
      end
  puts ""

  while true
    puts "If person has allergies, type the name of the allergy here. If no allergies, type 'done'."
      allergy_name = gets.chomp
      if allergy_name == "done"
         allergies_ans = true
         puts "Thank you."
         break
      elsif allergy_name == "sunshine"
         allergies_ans = true
         puts "Probably a vampire."
         break
      else
        puts ""
      end
  end
  puts""


  if (age == true) && ((g_b == true) || (ins == true))
    puts "Probably not a vampire"
  elsif (age == false) && ((g_b == false) || (ins == "no"))
    puts "Probably a vampire"
  elsif (age == false) && (g_b == false) && (ins == false)
    puts "Almost certainly a vampire"
  elsif (name == "Drake Cula") || (name == "Tu Fang")
    puts "Definitely a vampire."
  else
    puts "Results inconclusive."
  end

nmbr_surveys += 1
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."

