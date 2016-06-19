#ask the employee what their name is
puts "What is your name?"
name=gets.chomp

#ask them how old they are and what year they were born
puts "How old are you, #{name}?"
age=gets.chomp

puts "What year were you born, #{name}?"
year_born=gets.chomp
current_year=2016

#see if age is correct and set to boolean
if (age.to_i == (current_year.to_i - year_born.to_i)) || ((age.to_i + 1) == (current_year.to_i - year_born.to_i))
	age = true
else 
	age = false
end


#ask them if they want garlic bread
puts "Our company cafeteria serves garlic bread. Should we order some for you? - Please answer yes or no."
garlic_bread=gets.chomp

#set garlic_bread to boolean
if garlic_bread.include? "yes"
	garlic_bread = true
else 
	garlic_bread = false
end

#ask them if they would like to enroll in the company's health insurance
puts "Would you like to enroll in the company's health insurance, #{name}?"
health_insurance = gets.chomp

#set health_insurance to boolean
if health_insurance.include? "yes"
	health_insurance = true
else
	health_insurance = false
end 

vampire_decision = "Results inconclusive"
	
if  age && (garlic_bread || health_insurance)
	vampire_decision = "Probably not a vampire"
end

if !age && (!garlic_bread || !health_insurance)
	vampire_decision = "Probably a vampire"
	
end

if !age && !garlic_bread && !health_insurance
	vampire_decision = "Almost certainly a vampire"

end

if name == "Drake Cula" or name == "Tu Fang"
	vampire_decision = "Definitely a vampire"

end 

puts vampire_decision 

	