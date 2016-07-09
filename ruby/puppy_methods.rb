class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end
  
  def speak(number)
	number.times{puts "Woof!"}
	end
	
	def roll_over
		puts "*roll over*"
	end
	
	def dog_years(years)
		puts "I am #{years*7}  human years old"
	end
	
	def sit
	puts "I just sat!"
	end
	
	def initialize
	puts "Initializing new puppy instance ..."
	end
		
end

thomas = Puppy.new
thomas.fetch("ball")
thomas.speak(9)
thomas.roll_over
thomas.dog_years(6)
thomas.sit

class Cat
	def meow(mew)
	mew.times{puts "Meow!"}
	end
	
	def scratch
	puts "I like to scratch furniture!"
	end
	
	def initialize
	puts "Initializing new cat instance"
	end
	
end

felix = Cat.new
felix.meow(3)
felix.scratch

pound = []
weight = 0
 
 while weight < 50
   pound << Cat.new
   weight += 5
 end
 puts pound.length
