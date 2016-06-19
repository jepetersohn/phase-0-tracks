#ask the employee what their name is
puts "What is your name?"
name=gets.chomp
#ask them how old they are and what year they were born
puts "How old are you, #{name}?"
age=gets.chomp
puts "What year were you born, #{name}?"
year_born=gets.chomp
current_year=2016
#ask them if they want garlic bread
puts "Our company cafeteria serves garlic bread. Should we order some for you? - Please answer yes or no."
garlic_bread=gets.chomp
#ask them if they would like to enroll in the company's health insurance
puts "Would you like to enroll in the company's health insurance, #{name}?"
health_insurance = gets.chomp

if garlic_bread.include? "yes"
	garlic_bread = true
else 
	garlic_bread = false
end

if health_insurance.include? "yes"
	health_insurance = true
else
	health_insurance = false
end 

#see if age is correct 
if (age.to_i == (current_year.to_i - year_born.to_i)) || ((age.to_i + 1) == (current_year.to_i - year_born.to_i))
	age = true
else 
	age = false
end
	
if  age && (garlic_bread || health_insurance)
	vampire_decision = "Probably not a vampire"
	puts vampire_decision
	else
	vampire_decision = "Results inconclusive"
end


p vampire_decision 