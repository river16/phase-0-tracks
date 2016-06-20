puts " "
puts "Name of staff entering hamster data:  "
puts " "
  clerk_name = gets.chomp
puts " "


puts "What is the hamster's name?"
puts " "
  name = gets.chomp
# first letter of name .upcase
#test output: puts "#{name.capitalize}"
puts " "


puts "On a scale of 1-10, ten being the squeakiest, how loud is #{name.capitalize}?"
puts " "
# no. str converted to an integer
  vol = gets.chomp.to_i
#test output: puts "#{name.capitalize} has a squeaky volume of #{vol}."
puts " "


puts "What color fur does #{name.capitalize} have?"
puts " "
  fur_color = gets.chomp
#test output: puts "#{name.capitalize} fur color is #{fur_color}."
puts " "


puts "How old is #{name.capitalize}?"
puts " "
#convert age to float to accommodate partial years input
# for example 4.5 yrs old
#allow for input = enter (no data entered)
  age = gets.chomp.to_f
    if age = nil
      input = ""
    else
      input = age
    end
#test output:  puts "#{name.capitalize} is #{age} years old."
puts " "


puts "Is #{name.capitalize} a good candidate for adoption? y or n"
puts " "
  adoptable = gets.chomp
    if adoptable == ""
      input = "not sure"
    elsif adoptable == "y"
      input = true
    else
      input = false
    end
#test output: puts "#{name.capitalize} is adoptable:  #{input}"
puts " "
puts " "
#confirm data entered via print to screen
puts "Let's confirm the data entered for the hamster named #{name.capitalize}:"
puts " "
puts "Clerk name:  #{clerk_name.capitalize} "
puts " "
puts "Name of hamster: #{name.capitalize}"
puts " "
puts "Volume of squeakiness:  #{vol}"
puts " "
puts "Fur color:  #{fur_color}"
puts " "
puts "Age:  #{age}"
puts " "
puts "Good adoption candidate:  #{input}"
puts " "
puts "Thank you, #{clerk_name.capitalize}, for entering information about the hamster named #{name.capitalize}!"
puts " "
puts " If you need to make any changes, simply restart this program."
puts " "
puts " "
puts " "