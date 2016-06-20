# Define Methods (rules)

def encrypt(string)
	index = 0
	while index < string.length
		s = string[index]
		if s == "z"
			string[index] = "a"
		elsif s != " "
			string[index] = string[index].next
		end
		index += 1
	end
	return string
end

def decrypt(string)
	index = 0
	while index < string.length
		alpha_reverse = "zyxwvutsrqponmlkjihgfedcba"
		s = string[index]
		s_location = alpha_reverse.index(s)
		if s_location != nil
			t = alpha_reverse[s_location + 1]
			if s == "a"
			string[index] = "z"
			elsif s != " "
			string[index] = t
			end
		end
		index += 1
	end
	return string
end

puts decrypt(encrypt("swordfish"))

# Release 5

puts "Good morning Agent. Your mission, should you choose to accept it, 
involves a password. 
As always, should you or any of your force be caught or killed, 
the Secretary will disavow any knowledge of your actions. 
This message will self-destruct in five seconds. 
Good luck Agent."

puts "Mission: Would you like to encrypt or decrypt a password?"
choice = gets.chomp

puts "Enter password: "
password = gets.chomp

if choice == "encrypt"
	puts "The encryption is: " + encrypt(password)
elsif choice == "decrypt"
	puts "The decryption is: " + decrypt(password)
else
	puts "I didn't recognize your choice"
end

puts "Mission completed."