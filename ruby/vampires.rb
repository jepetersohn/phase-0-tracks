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

if (current_year.to_i - year_born.to_i) == age.to_i && garlic_bread=="yes" 
	puts "Probably not a vampire"
else 
	puts "Results inconclusive"
end 