def weather
  clouds = "are orange"
  rain = "looks like rain."
  puts "About to run the block."
  yield(clouds,rain)
  puts "Ran around the block."
end

weather { |clouds, rain| puts "The clouds #{clouds}. I think it #{rain}"}


car_types = ["mazda", "corvette", "jeep"]
car_types.each do |cars|
  puts cars
end


car_types = ["mazda", "corvette", "jeep"]
puts "Before .map call:"
p car_types
car_types.map! do |cars|
  cars.upcase
end

puts "After .map call:"
p car_types




breakfast_club = {:Molly => "Claire", :Ally => "Allison", :Judd => "Bender"}
breakfast_club.each do |actor, role|
  puts "#{actor} is #{role}"
end



breakfast_club = {:Molly => "Claire", :Ally => "Allison", :Judd => "Bender"}
puts "before:"
p breakfast_club
puts "after:"
p breakfast_club.map {|key, value| key.upcase}



# RELEASE TWO

#ARRAY
nmbrs = [1, 2, 3, 4, 5, 6]
nmbrs.delete_if {|nmbr| nmbr < 5 }
p nmbrs


nmbrs = [1, 2, 3, 4, 5, 6]
nmbrs.keep_if {|nmbr| nmbr < 5 }
p nmbrs


nmbrs = [1, 2, 3, 4, 5, 6]
nmbrs.select do |nmbr|
  nmbr % 2 == 0
end


#HASH
digits = {:one => 1, :two => 2, :three => 3, :four => 4, :five => 5, :six => 6}
digits.delete_if {|key, value| value < 3}
p digits


digits = {:one => 1, :two => 2, :three => 3, :four => 4, :five => 5, :six => 6}
digits.keep_if {|key, value| value < 3}
p digits


digits = {:one => 1, :two => 2, :three => 3, :four => 4, :five => 5, :six => 6}
digits.select! {|key, value| value % 2 == 0}
p digits






