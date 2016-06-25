#create client survey
client_survey = {
	name: " ", 
	age: " ",  
	number_of_children: " ", 
	decor_theme: " ", 
	likes_carpeting: " ", 
	likes_vaulted_ceilings: " ", 
}

#ask for user to input the data to fill in the client survey
#continue asking for each item until all are complete
puts "What is the client's full name?"

client_survey[:name] = gets.chomp.to_s

puts "How old is the client?"

client_survey[:age] = gets.chomp.to_i

puts "How many children does the client have?"

client_survey[:number_of_children] = gets.chomp.to_i

puts "What decor theme would they prefer?"
client_survey[:decor_theme] = gets.chomp.to_s 

puts "Do they like carpeting? (yes or no)"

client_survey[:likes_carpeting] = gets.chomp

until client_survey[:likes_carpeting] == "yes" || client_survey[:likes_carpeting] == "no"
puts "I did not understand your answer. Please enter 'yes' or 'no.'"
client_survey[:likes_carpeting] = gets.chomp
end

#change carpeting to a boolean
if client_survey[:likes_carpeting] == "yes"
	client_survey[:likes_carpeting] = true
elsif client_survey[:likes_carpeting] == "no"
	client_survey[:likes_carpeting] = false
end

puts "Do they like vaulted ceilings? (yes or no)"

client_survey[:likes_vaulted_ceilings] = gets.chomp

until client_survey[:likes_vaulted_ceilings] == "yes" || client_survey[:likes_vaulted_ceilings] == "no"
puts "I did not understand your answer. Please enter 'yes' or 'no.'"
client_survey[:likes_vaulted_ceilings] = gets.chomp
end

#change vaulted ceilings to a boolean
if client_survey[:likes_vaulted_ceilings] == "yes"
	client_survey[:likes_vaulted_ceilings] = true
elsif client_survey[:likes_vaulted_ceilings] == "no"
	client_survey[:likes_vaulted_ceilings] = false
end

#print the client survey
puts client_survey

#ask if they want to make any changes to the client survey
puts "Do you want to make any changes? (yes or no)"

changes = gets.chomp

until changes == "yes" || changes == "no"
puts "I did not understand your answer. Please enter 'yes' or 'no.'"
changes = gets.chomp
end

#let them make changes to the survey item of their choice
if changes == "yes"
	puts "Would you like to change 'name', 'age', 'number_of_children', 'decor_theme', 'likes_carpeting', or 'likes_vaulted_ceilings'?"
	type_of_change = gets.chomp
	elsif changes == "no"
	puts nil 
end

until type_of_change == "name" || type_of_change == "age" || type_of_change == "number_of_children" || type_of_change == "decor_theme" || type_of_change == "likes_carpeting" || type_of_change == "likes_vaulted_ceilings" || type_of_change == "done"
puts "I did not understand you. Please enter 'name', 'age', 'number_of_children', 'decor_theme', 'likes_carpeting', 'likes_vaulted_ceilings', or 'done'."
	type_of_change = gets.chomp 
end

if type_of_change == "name"	
	puts "What is the client's full name?"
	client_survey[:name] = gets.chomp.to_s
elsif type_of_change == "age"
	puts "How old is the client?"
	client_survey[:age] = gets.chomp.to_i
elsif type_of_change == "number_of_children"
	puts "How many children does the client have?"
	client_survey[:number_of_children] = gets.chomp.to_i
elsif type_of_change == "decor_theme"
	puts "What decor theme would they prefer?"
	client_survey[:decor_theme] = gets.chomp.to_s 
elsif type_of_change == "likes_carpeting"
	puts "Do they like carpeting? (yes or no)"
	client_survey[:likes_carpeting] = gets.chomp

	until client_survey[:likes_carpeting] == "yes" || client_survey[:likes_carpeting] == "no"
		puts "I did not understand your answer. Please enter 'yes' or 'no.'"
	client_survey[:likes_carpeting] = gets.chomp
	end
elsif type_of_change == "likes_vaulted_ceilings"
	puts "Do they like vaulted ceilings? (yes or no)"
	client_survey[:likes_vaulted_ceilings] = gets.chomp
	until client_survey[:likes_vaulted_ceilings] == "yes" || client_survey[:likes_vaulted_ceilings] == "no"
	puts "I did not understand your answer. Please enter 'yes' or 'no.'"
	client_survey[:likes_vaulted_ceilings]= gets.chomp
	end
elsif type_of_change == "done"
	puts nil 
end 

if client_survey[:likes_vaulted_ceilings] == "yes"
	client_survey[:likes_vaulted_ceilings] = true
elsif client_survey[:likes_vaulted_ceilings] == "no"
	client_survey[:likes_vaulted_ceilings] = false
end

if client_survey[:likes_carpeting] == "yes"
	client_survey[:likes_carpeting] = true
elsif client_survey[:likes_carpeting] == "no"
	client_survey[:likes_carpeting] = false
end

#print the updated client survey
puts client_survey

