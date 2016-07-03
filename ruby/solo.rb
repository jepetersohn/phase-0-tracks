# designing a class preschoolers
#at least three attributes (using at least two data types) whose values will vary from instance to instance (example: age)
#attributes
#age from 3-6
#gender
#name

#at least three methods, at least one of which takes an argument
#methods
#tantrum about something
#make a mess
#sleep

class Preschooler

  def initialize
  	puts "Initializing a new preschooler instance..."
  	@age = rand(3-6) 
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

  def sleep
  	puts "Mom can relax now. #{@name} is finally asleep."
  end
  
end

Jimmy = Preschooler.new 
Jimmy.name("Jimmy")
Jimmy.gender("boy")
Jimmy.tantrum("I wanted a blue apple, not a red apple")
Jimmy.sleep 
