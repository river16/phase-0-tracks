#Release 1
#Provide a user interface that lets a user enter a name and get a fake name back. 
#Let the user do this repeatedly until they decide to quit by typing 'quit'. 
#(They might just hit Enter to continue.)
#Swapping the first and last name.

#Release 0
#Changing all of the vowels (a, e, i, o, or u) to the next vowel in 'aeiou', 
#and all of the consonants (everything else besides the vowels) to the next consonant in the alphabet. 
#So 'a' would become 'e', 'u' would become 'a', and 'd' would become 'f'.

	def mixer(name)
vowels = ["a", "e", "i", "o", "u"]
consonants= ["b", "c", "d", "f", "g", "h","j","k","l","m","n","p","q","r","s","t","v","w","x","y","z"]
new_name = name.split(" ").rotate
swapped_name = new_name.join(" ")
letters = swapped_name.downcase.split("")

	letters.map! do |letter|
		if letter == " "
			letter = " "
		elsif letter == "z"
			letter = "b"
		elsif letter == "u"
			letter = "a"
		elsif vowels.include?(letter) || consonants.include?(letter)
			if vowels.include?(letter)
				letter = vowels[vowels.index(letter) +1]
			else
				letter = consonants[consonants.index(letter) +1]
			end
		else
			puts "Please type a valid character."
		end
	end
	arr = letters.join("")
	arr.split(" ").map! {|word|	word.capitalize}.join(" ")

end



puts "Please type a name so we can create a fake name"
answer = gets.chomp
answer_arr = []
fake_arr = []
loop do
	if answer == "quit"
		break
	else
		p mixer(answer)
		answer_arr << answer
		fake_arr << mixer(answer)
	end
	puts "More names?"
	answer = gets.chomp
end

#Use a data structure to store the fake names as they are entered. 
#When the user exits the program, 
#iterate through the data structure and print all of the data the user entered.

i = 0
while i < fake_arr.length
	puts fake_arr[i] + " is actually " + answer_arr[i] + "."
	i+=1
end