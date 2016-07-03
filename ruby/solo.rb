# designing a class preschoolers
#at least three attributes (using at least two data types) whose values will vary from instance to instance (example: age)
#attributes:
#age from 3-6
#gender
#name

#at least three methods, at least one of which takes an argument
#methods:
#tantrum about something
#make a mess
#sleep

class Preschooler

	attr_reader :age
	attr_accessor :make_a_mess, :tantrum, :name  

  def initialize
  	puts "Initializing a new preschooler instance..."
  	@age = rand(3...6) 
  	puts "#{@age} years old"
  end 
  
   def name(name)
   		@name = name
   		puts "Name: #{@name}"
   	end 
   
   def gender(boy_or_girl)
   		@gender = boy_or_girl
   		puts @gender
   end
   
  def tantrum(thing_upset_about)
  	puts "*Falls on floor*"
    puts "Wahhhh! #{thing_upset_about}!"
  end

  def make_a_mess(the_item)
  		puts "Oh no!!! The preschooler has poured nail-polish all over #{the_item}!"
  end
	
  def sleep
  	puts "Mom can relax now. #{@name} is finally asleep."
  end
  
end

#user interface
puts "How many preschoolers would you like to input?"
number = gets.chomp.to_i 

while number > 0 
	puts "What is the preschooler's name?"
	@name = gets.chomp.capitalize

	child = Preschooler.new 
	puts "Name: #{@name}"
	puts "What is #{@name}'s gender?"
	@gender = gets.chomp.capitalize
	puts "Gender: #{@gender}"
	puts "From their point of view, why would they say they are upset?"
	@thing_upset_about = gets.chomp.capitalize
	child.tantrum(@thing_upset_about)
	puts "What did #{@name} pour nail-polish on?"
	@the_item = gets.chomp.downcase
	child.make_a_mess(@the_item)


number = number - 1 
end