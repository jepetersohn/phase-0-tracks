#module Shout
  #def self.yell_angrily(words)
   # words + "!!!" + " :("
  #end

  #def self.yelling_happily(happy_words)
  	#happy_words + " woohoo!" + " boomshakalaka!" + " :D"
  #end
#end

#driver code

#p Shout.yell_angrily("boooooooooo")

#p Shout.yelling_happily("yay yay yay!")

#create mix-in module
module Shout
  def yell_angrily(words)
    puts "I hate you all! #{words}!!!"
  end

  def yelling_happily(happy_words)
  	puts "Wooooo! #{happy_words}"
  end
end


class Singer
	include Shout
end

class Teenager
	include Shout
end

popsinger = Singer.new
popsinger.yelling_happily("Life is wonderful!")

jane = Teenager.new
jane.yell_angrily("Give me a new cellphone!")