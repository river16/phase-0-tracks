# 5.3 Release 3: Interior Designer

Method to convert input into integer and boolean
def convert_input(h) #takes has as an argument
  #converts age and children to integer
  h[:age] = h[:age].to_i
  h[:children] = h[:children].to_i

  #converts to boolean
  if h[:minimalism] == "yes"
    h[:minimalism] = true
  elsif [:minimalism] == "no"
    h[:minimalism] = false
  end

  h #return hash
end

def print_hash(h)
  h.each { |key, val|
    if key == :minimalism
      if h[key] == true
        puts "minimalism: yes"
      elsif h[key] == false
        puts "luxury: no"
      end
    elsif
      puts "#{key}: #{val}"}
    end
  }
end

def update_data(h)
  #   need to get the field that they want to change, then print the key for that field, then get the value and assign it to the value corresponding to that key
  puts "Would you like to change anything? Type which field you want to change, enter 'none' if you are satisfied. "
  # ask user which field they'd like to change
  which_field = gets.chomp
  #exit if user enters "none"
  if which_field == "none"
    return h
  end
  field_key = which_field.to_sym
  # get new value for that key
  puts "What would you like to change #{which_field} to?"
  new_value = gets.chomp
  h[field_key] = new_value
  # convert new values where appropriate
  convert_input(h)
  # return the updated hash
  h
end

# Initialize empty hash
interior_designer_job = {}

# Ask client's name and store in hash
puts "What is your name?"
name_input = gets.chomp
interior_designer_job[:name] = name_input

# Ask client's age and store in hash
puts "What is your age?"
age_input = gets.chomp
interior_designer_job[:age] = age_input

# Ask number of children client has and store in hash
puts "How many children do you have?"
children_input = gets.chomp
interior_designer_job[:children] = children_input

# Ask decor theme of client and store in hash
puts "What is your decor theme?"
decor_theme_input = gets.chomp
interior_designer_job[:decor_theme] = decor_theme_input

# Ask if client likes minimalism and store in hash
puts "Do you like minimalism?"
minimalism_iput = gets.chomp
interior_designer_job[:minimalism] = minimalism_iput


# now interior has fields name, age, children, decor, luxury, all with strings as values

#convert data to proper values (integer, boolean) where appropriate
convert_input(interior)

#print data
print_hash(interior)

#offer edit
update_data(interior)   # calls convert_input within update_data method

#print edited data
print_hash(interior)