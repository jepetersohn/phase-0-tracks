puts "What is the client's full name?"

name = gets.chomp

puts "How old is the client?"

age = gets.chomp

puts "How many children does the client have?"

number_of_children = gets.chomp

puts "What decor theme would they prefer?"
decor_theme = gets.chomp 

puts "Do they like carpeting? (yes or no)"

likes_carpeting = gets.chomp

until likes_carpeting == "yes" || likes_carpeting == "no"
puts "I did not understand your answer. Please enter 'yes' or 'no.'"
likes_carpeting = gets.chomp
end

if likes_carpeting == "yes"
	likes_carpeting = true
elsif likes_carpeting == "no"
	likes_carpeting = false
end



client = {
	name: , 
	age: ,  
	number_of_children: , 
	decor_theme: , 
	likes_carpeting: , 
	likes_vaulted_ceilings: , 
}


puts client_survey [:name]
puts client_survey [:age]
