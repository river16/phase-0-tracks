#INTERIOR DESIGNER APPLICATION DATA

#INIT HASH
client_data = {}

#PROMPT FOR DATA ENTRY
puts " * * PLEASE ENTER CLIENT DATA BELOW * * "

#CLIENT DATA INPUT ITEMS
  puts "Enter client first name:"
      client_firstname = gets.chomp

  puts "Enter client last name:"
      client_lastname = gets.chomp

  puts "Enter client's age:"
      client_age = gets.chomp.to_i

  puts "Enter client's number of kids they have:"
      client_kids = gets.chomp.to_i

  puts "Which of the following styles does the client prefer:  "

  puts "Art Deco  (y/n)"
    decor_pref_deco = gets.chomp
  if decor_pref_deco == "y"
    dpd = true
  else
    dpd = false
  end

  puts "Country (y/n)"
    decor_pref_cntry = gets.chomp
  if decor_pref_cntry == "y"
    dpc = true
  else
    dpc = false
  end

  puts "Neopolitan (y/n)"
      decor_pref_neo = gets.chomp
  if decor_pref_neo == "y"
    dpn = true
  else
    dpn = false
  end

#FILL HASH ENTRIES, DISPLAY HASH AND MSG TO REVIEW DATA ENTERED

puts "PLEASE REVIEW DATA ENTERED"

#HASH ENTRIES
client_data = {:firstname => client_firstname, :lastname =>  client_lastname, :age => client_age, :kids => client_kids, :decor_deco => dpd, :decor_cntry => dpc, :decor_neo => dpn }

p client_data

#PROMPT IF ANY DATA ITEMS NEED TO BE REVISED
puts "Is there any data item you wish to revise? (y/n)"
  revise = gets.chomp

  if revise == "y"
    puts "Please type the item name you wish to revise:"
      rev_key = gets.chomp.to_sym
    puts "Please enter the revised data for #{rev_key} you wish to revise:"
      input = gets.chomp
      client_data[rev_key] = input
      p client_data
    else
      puts "Client data entry completed - thank you!"
  end
#END
