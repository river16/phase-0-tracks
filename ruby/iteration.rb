## 5.3 Mandatory Pairing: Iteration ##

birds = ["Robin", "Crow", "Owl"]

#Print the orignial array
p birds

birds.each do |bird|
	puts "I like #{bird}s" 
end

p birds

birds.map! do |bird|
	puts "I like #{bird}s"
end

p birds	

####################

birds = {
	"robin" => "Red",
	"crow" => "Black",
	"owl" => "Gray"
}

birds.each do |species, color|
	puts "I think this #{species} is #{color}."
end

####################

## Arrays ##
numbers = [1, 4, 6, 10]
numbers.delete_if { |number| number < 5}
p numbers

numbers = [1, 4, 6, 10]
numbers.keep_if { |number| number < 5}
p numbers


numbers.select { |number| number > 6}


numbers = [1, 4, 6, 10]
numbers.drop_while { |number| numbers <= 6 }
p numbers


## Hashes ##

numbers = {
	"number1" => 1,
	"number2" => 3,
	"number3" => 5,
	"number4" => 7,
}
numbers.delete_if {|key, value| value >= 3}

numbers = {
	"number1" => 1,
	"number2" => 3,
	"number3" => 5,
	"number4" => 7,
}
numbers.keep_if {|key, value| value >= 3}

numbers = {
	"number1" => 1,
	"number2" => 3,
	"number3" => 5,
	"number4" => 7,
}
numbers.select {|k,v| v > 4} 







