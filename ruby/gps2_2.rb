# Method to create a list
# create empty hash
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # break up the string into individual words
  # make each word a key in the hash

  # set default quantity
  # set to default of 1
  # make the value of each key 1
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]

def create_hash(list_items)
	hash_name = {}
	array_of_items = list_items.split
	array_of_items.each do |x|
		hash_name.store(x,1) 
	end
	hash_name
end 



# Method to add an item to a list
# input: item name and optional quantity and list to be added to
# steps: set the value of the item and quantity as the key-value pair in the hash
# output: print list and make sure list is returned

def add_item(list, individual_item, quantity = 1)
	list.store(individual_item, quantity) 
	p list
end
	

# Method to remove an item from the list
# input: item to be removed and list to be removed from
# steps: find the item in the hash key and delete that key-value pair from the hash
# output: list minus the item that was removed

def rem_item(list, individual_item)
	list.delete(individual_item)
	p list
end
	

# Method to update the quantity of an item
# input: change value for a specific key using the new value that it will be changed to
# steps: find value of key in hash and change it to a new quantity
# output: list and item with new quantity

def update_value(list, individual_item, quantity)
	list[individual_item] = quantity
	p list
end 

# Method to print a list and make it look pretty
# input: the name of the list that we want to print
# steps: print out the title of the list first, and then print out the list of items within the hash, followed by their quantity
# output: the hash with key-value pairs (items and quantities)

def print_list(list)
	puts "This is our grocery list"
	list.each do |x|
		puts "#{x}: #{list[x]}"
	end
end 


grocery_list = create_hash("apples, oranges, pears, lemons")
p grocery_list 
add_item(grocery_list, "lemonade", 2)
add_item(grocery_list, "tomatoes", 3)
add_item(grocery_list, "onions", 1)
add_item(grocery_list, "ice cream", 4)
rem_item(grocery_list, "lemonade")
update_value(grocery_list, "ice cream", 1)
print_list(grocery_list)
