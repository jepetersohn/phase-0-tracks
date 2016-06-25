def print_block
	puts "Who is working on this pair session?"
	puts "Enter the first person."
	name1 = gets.chomp
	puts "Enter the second person."
	name2 = gets.chomp
	yield(name1, name2)
end

print_block {|name1, name2| puts "#{name1} and #{name2} are working on this pair!"}





restaurants = [ "Olive Garden ", "China Buffet ", "Taco Bell "]

restaurant = {"olive garden":"italian", "China Buffet":"Chinese", "Taco Bell":"Mexican"}

restaurant.each do 
 |place, type|
 puts "#{place} in an #{type} restaurant"
end

restaurants.map! do |food|
	puts food
	food.reverse
end	

puts "The reverse is"
p restaurants

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
puts numbers.select {|n| n > 5}

number = { "a": 1, "b": 2,"c":3, "d":4,"e":5, "f":6, "g":7}

number.delete_if{|k, v| v.odd?}
  p number