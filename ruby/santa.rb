class Santa
	attr_reader :gender, :ethnicity
	attr_accessor :gender, :age, :reindeer_name

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance...."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
		@reindeer_name
	end

	def speak
		puts "Ho, ho, ho! Haaaapy holidays!"
	end

	def snack(cookie_type)
		puts "Mmmmm, that #{cookie_type} was good!"
	end

	def celebrate_birthday
		@age += 1
	end

	def get_mad_at(reindeer_name)
		@reindeer_ranking.rotate!
		puts "I see what's going on there #{reindeer_name}, move to the back of the line!"
	end


	def display
		puts "#{@reindeer_ranking} is #{@gender} and #{@ethnicity} at the moment ."
	end
end


lots_of_santas = 0
genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
reindeer_names = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]

#Write a program that creates lots of Santas.
# => create 400 santas
#Create Santas with a randomly selected gender 
# and a randomly selected ethnicity.
# => gender.sample <= array item random
# => ethnicity.sample <= array item random
#Set your new Santa's age to a random number between 0 and 140.
# => age = rand[1..140]
#your program should print out the attributes using the instance methods that give you access to that data

while lots_of_santas < 50
	puts @reindeer_name
	santas = Santa.new(genders.sample, ethnicities.sample)
	santas.age = rand(1..140)
	puts "Santa number #{lots_of_santas} is #{santas.gender} and #{santas.ethnicity}"
	santas.speak
	santas.snack("snickerdoodle")
	puts "Santa, are you really #{santas.celebrate_birthday} years old?"
#	puts "I heard Santa's age was #{santas.age}"
#	santas.get_mad_at()
	lots_of_santas += 1
	puts "----------------------------------"
end

