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

puts "Would you like to generate a new preschooler instance? yes or no?"
answer = gets.chomp
if answer == "yes"
	child = Preschooler.new 
elsif answer == "no"
	puts "Have a nice day."
else 
	puts "I did not understand you. Please enter yes or no."
end 

puts "What is the preschooler's name?"
@name = gets.chomp.capitalize
puts "Name: #{@name}"

puts "What is the #{@name}'s gender?"
@gender = gets.chomp
puts "Gender: #{@gender}"

puts "From their point of view, why would they say they are upset?"
@thing_upset_about = gets.chomp
child.tantrum(@thing_upset_about)

puts "What did #{@name} pour nail-polish on?"
@the_item = gets.chomp.downcase
child.make_a_mess(@the_item)


#driver code

#child = Preschooler.new 
#child.name("Jimmy")
#child.gender("boy")
#child.tantrum("I wanted a blue apple, not a red apple")
#child.make_a_mess("the dog")
#child.sleep 

#puts child.name = "Bobby"
#puts child.age 
#child.gender("boy")
#child.tantrum("I wanted to eat my soup with a knife, not a spoon!")
#child.make_a_mess("the couch")
#child.sleep 

#child = Preschooler.new
#child.name("Sarah")
#child.gender("female")


