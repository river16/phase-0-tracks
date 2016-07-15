#1). An encrypt method that advances every letter of a string one letter forward. 
#So "abc" would become "bcd". For now, you can assume lowercase input and output. 
#Any space character should remain a space character -- no change made.

def encryption(str)
alf = "abcdefghijklmnopqrstuvwxyz"
i = 0
answer = []
	while i < str.length
		if str[i] == "z"
		answer.push("a")
		end
	char = alf.index(str[i])
	answer.push(alf[char+1])
	i+=1
	end
	answer.join
end

#encryption("hmr")

#2. A decrypt method that reverses the process above.

def decryption(string)
	alf = "abcdefghijklmnopqrstuvwxyz"
	i = 0
	answer = []
	while i < string.length
		char = alf.index(string[i])
		answer.push(alf[char-1])
		i +=1
	end
	answer.join
end

#decryption("cdefghijklmnopqrstuvwxyz")

#decryption(encrypt("swordfish"))

p "Hello Agent Bond, would you like to decrypt or encrypt a password?"
password_choice = gets.chomp

if password_choice = "encrypt"
	p "What is the secret password?"
	secret_password = gets.chomp
	encryption "#{secret_password}" 
puts "#{encryption(secret_password)}"

elsif password_choice = "decrypt"
	p "What is the secret password?"
	secret_password = gets.chomp
	decryption "#{secret_password}" 
	puts "#{decryption(secret_password)}"
else
end

p "Mission completed, good job Secret Agent"