class Santa 
	
	def initialize(gender, ethnicity)
  		puts "Initializing Santa instance ..."
  		@gender = gender
  		@ethnicity = ethnicity
 	end 

	def reindeer_ranking
		ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	end 
	
	def age 
		@age = 0
	end 
	
	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end 
	
	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type} cookie!"
	end 

end 

fatman = Santa.new("male", "ethiopian") 
fatman.speak 
fatman.eat_milk_and_cookies("oatmeal")