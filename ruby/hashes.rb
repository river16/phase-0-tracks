
'''
PROMPT DESIGNER TO ENTER ALL CLIENT DATA REQUESTED
REQUEST THESE CLIENT DETAILS:  
	name(full name)
	age()
	no. rooms to decorate()
	fave color(color)
	decor preferences(choice of 3, any or all)
CONVERT USER INPUT TO APPROPRIATE DATA TYPE
DISPLAY HASH TO SCREEN AFTER USER ENTERED ALL DATA
GIVE USER OPPORTUNITY TO REVISE ANY OF THEIR ORIGINAL DATA INPUT
IE; THE VALUE OF A KEY
ASSUME USER TYPES CORRECT NAMING OF KEY
NO NEED TO LOOP REQUEST
ONLY ASK USER ONCE IF THEY NEED TO UPDATE ANY DATA,
IF NO DATA REQUIRES REVISION, TYPE none TO SKIP
P DISPLAY LATEST VERSION OF HASH TO SCREEN, THEN EXIT
'''

#INTERIOR DESIGNER APPLICATION DATA

#INIT HASH
client_data = {}

#PROMPT FOR DATA ENTRY
puts " * * PLEASE ENTER CLIENT DATA BELOW * * "

#CLIENT DATA INPUT ITEMS
puts "Enter client first name:  "
    client_firstname = gets.chomp

puts "Enter client last name:  "
    client_lastname = gets.chomp

puts "Enter number of rooms to decorate for client:  "
    client_nmbr_rooms = gets.chomp.to_i

puts "Enter client's favorite color:"
    client_fave_color = gets.chomp

puts "Which of the following styles does the client prefer:  "

puts "Art Deco  (y/n)"
	art_deco = gets.chomp

if art_deco == "y"
	artdec = true
else
	artdec = false
end	

puts "Country (y/n)"
	country = gets.chomp

if country == "y"
	cntry = true
else
	cntry = false
end

puts "Neopolitan (y/n)"
    neopolitan = gets.chomp

if neopolitan == "y"
	neo = true
else
	neo = false
end


#HASH ENTRIES
client_data = {
	firstname: client_firstname,
	lastname: client_lastname,
	rooms: client_nmbr_rooms,
	fave: client_fave_color,
	art_deco:  artdec,
	country: cntry,
	neopolitan: neo
}

# DATA REVIEW REQUEST & DISPLAY HASH
puts "PLEASE REVIEW DATA ENTERED"
p client_data


#PROMPT IF ANY DATA ITEMS NEED TO BE REVISED
puts "Is there any data item you wish to revise? (Type 'yes' to revise or 'none' to exit)"
  revise = gets.chomp

if revise == "yes"
	puts "Please type the label name of the item you wish to revise: "
    rev_key = gets.chomp.to_sym  #CONVERT STRING INPUT TO SYMBOL SO INPUT WILL MATCH HASH KEY SYMBOL
	puts "Please enter the revised data for #{rev_key}:  "
    revised_input = gets.chomp
    client_data[rev_key] = revised_input
    p client_data
    puts "Client data entry completed - thank you!"
else
    puts "Client data entry completed - thank you!"
end
