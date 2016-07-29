class Puppy

  def initialize
  	puts "Initialize new puppy instance..."
  end 
		
  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(integer)
	 integer.times do 
	 	puts "Woof"
     end
   end
   
   def rollsover
   	puts "*rollsover*"
   end
   
   def dog_years(integer)
   	dog_years = 7*integer 
   	p dog_years
   end 
   
   def sits
   	puts "*sits*"
   end 
end

fido = Puppy.new

fido.fetch("ball")
fido.speak(5)
fido.rollsover
fido.dog_years(10)
fido.sits 

class Kitty
	def Initialize
		puts "Initializing a new kitten..."
	end
	
	def meow
		puts "*meows*"
	end 
	
	def scratch_object(object)
		puts "The cat just tore up the #{object}!"
	end 
end 

kitties = []
50.times do |i|
	kitties.push(Kitty)
end 

p kitties

kitties.each do |i|
	Kitty.new.meow 
	Kitty.new.scratch_object("couch")
end 