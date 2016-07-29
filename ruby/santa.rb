class Santa 
	
	attr_reader :age, :ethnicity 
	attr_accessor :gender
	
	def initialize(gender, ethnicity)
  		puts "Initializing Santa instance ..."
  		@gender = gender
  		@ethnicity = ethnicity
 		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
 		@age = rand(0-140) 
	end 
	
	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end 
	
	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type} cookie!"
	end 

	def celebrate_birthday
		@age += 1
	end
	
	def get_mad_at(reindeer)
		@reindeer_ranking.delete(reindeer.capitalize)
		@reindeer_ranking.push(reindeer.capitalize)
		p @reindeer_ranking
	end

	
end 


#driver code

fatman = Santa.new("male", "ethiopian") 
fatman.speak 
fatman.eat_milk_and_cookies("oatmeal")

santas = []
santas << Santa.new("male", "Ethiopian")
santas << Santa.new("female", "Chinese")
santas << Santa.new("prefer not to say", "Indian")
santas << Santa.new("female", "Thai")
p santas 

fatman.get_mad_at("rudolph")
fatman.get_mad_at("dancer")
fatman.gender=("female")
puts fatman.age 
fatman.celebrate_birthday
puts fatman.age 
puts fatman.ethnicity 

genders = ["agender", "bigender", "male", "female", "gender fluid", "N/A", "prefer not to say", "ambiguous"]
ethnicities = ["black", "Hispanic", "white", "Ethiopian", "prefer not to say", "Feline", "Canine", "invisble", "Chinese"]

#generate 50 random Santas

santas = []
50.times do |i|
	santas.push(Santa)
	fatman = Santa.new(genders.sample, ethnicities.sample)
	puts "#{fatman.speak} This Santa is #{fatman.age} years old, #{fatman.gender}, and #{fatman.ethnicity}."
end 



