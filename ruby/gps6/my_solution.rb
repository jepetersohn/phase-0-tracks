# Virus Predictor

# I worked on this challenge [with: kkordestani].
# We spent [1.5] hours on this challenge.

# EXPLANATION OF require_relative
# require_relative links contents of another file relative to the present file
# require uses an absolute path rather than a relative path
#
require_relative 'state_data'

# Grouping together all methods 
class VirusPredictor

#Initialize new instance of class based on parameters given 
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
# Calling both methods of predicted deaths and spead of spread 
  def virus_effects
    predicted_deaths #(@population_density, @population, @state)
    speed_of_spread #(@population_density, @state)
  end

  private
  
# Formula for predicted deaths based on population density and rounds down to nears whole number. Prints results at the end
  def predicted_deaths #(population_density, population, state)
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
# Formula for how fast virus will spread across state. Prints information at the end
  def speed_of_spread #(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0


    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects

STATE_DATA.each do |state, population_info|
  state = VirusPredictor.new(state, population_info[:population_density], population_info[:population])
  state.virus_effects
end


#=======================================================================
# Reflection Section



#What are the differences between the two different hash syntaxes shown in the state_data file?
# - there's a hash rocket and a colon. the hash rocket seems to link all of the data within the hash to the key on the left. within the hash, the colon is used to denote key-value pairs. 
#What does require_relative do? How is it different from require?
# - require_relative links contents of another file relative to the present file
# - require uses an absolute path rather than a relative path
#What are some ways to iterate through a hash?
# - you can use .each do to iterate through each item in the hash
#When refactoring virus_effects, what stood out to you about the variables, if anything?
# - due to the instance variables being defined elsewhere in the class, they could be used without needing to repeat
#What concept did you most solidify in this challenge?
# - i think that the biggest challenge was refactoring. it was kind of an aha moment when our guide helped us figure out that the instance variables were reduntant. that's something that will help in refactoring in the future. 