#create an empty hash
alias_list = {
	real_name:"" ,
	alias_name:"" ,
	
}

#define vowels
vowels = "aeiou".chars
#define consonants

consonants = "bcdfghjklmnpqrstvwxyz".chars


#ask the user for their name and change it to lower case

puts "Welcome to the alias generator. Input some names one at a time, and an alias will be generated for you. When you're done, type 'quit'."
puts ' '
puts "Do you have a name you'd like to have an alias generated for? Please enter 'yes' or 'no'."
answer = gets.chomp

until answer == "yes"|| answer == "no" || answer == "quit"
puts "I did not understand you, please answer 'yes' or 'no'."
	answer = gets.chomp.downcase
end

if answer == "no" || answer == "quit"
	puts "Have a nice day."
	
elsif answer == "yes"
	puts "What is your name?"
	name = gets.chomp.downcase
#swap their first and last name
name_split = name.split
	new_name = name_split.reverse.to_s 
#add the swapped name into the hash
	
	alias_list[:real_name] = name
	alias_list[:alias_name] = new_name
puts new_name  
end 
puts " "
#create a loop until they put 'quit'
until answer == "no" || answer == "quit"
puts "Do you have another name you'd like to have an alias generated for? Please answer 'yes' or 'no', or type 'quit' to exit."
answer = gets.chomp.downcase

until answer == "yes"|| answer == "no" || answer == "quit"
puts "I did not understand you, please answer 'yes' or 'no'."
	answer = gets.chomp
end
if answer == "no" || answer == "quit"
	puts "Have a nice day."
elsif answer == "yes"
	puts "What is your name?"
	name = gets.chomp.downcase
	
name_split = name.split
	new_name = name_split.reverse.to_s 
	alias_list[:real_name] = name
	alias_list[:alias_name] = new_name
puts new_name  

end
	
end 

puts alias_list
