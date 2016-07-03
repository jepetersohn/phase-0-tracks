class Santa 
	
	def initialize(gender, ethnicity)
  		puts "Initializing Santa instance ..."
  		@gender = gender
  		@ethnicity = ethnicity
 		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
 		@age = 0 
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
	
	def gender=(new_gender)
		@gender = new_gender
	end 
	
	def age
		@age
	end
	
	def ethnicity
		@ethnicity
	end 
	
end 

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
