client_survey = {
	name: " ", 
	age: " ",  
	number_of_children: " ", 
	decor_theme: " ", 
	likes_carpeting: " ", 
	likes_vaulted_ceilings: " ", 
}

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

if client_survey[:likes_vaulted_ceilings] == "yes"
	client_survey[:likes_vaulted_ceilings] = true
elsif client_survey[:likes_vaulted_ceilings] == "no"
	client_survey[:likes_vaulted_ceilings] = false
end


puts client_survey