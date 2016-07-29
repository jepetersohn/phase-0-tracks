require 'sqlite3'
require 'faker'

db = SQLite3::Database.new("petnames.db")
db.results_as_hash = true

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS petnames(
    id INTEGER PRIMARY KEY,
    species VARCHAR(255),
    color VARCHAR(255),
    gender VARCHAR(255),
    name VARCHAR(255)
  )
SQL

db.execute(create_table_cmd)

#db.execute("INSERT INTO petnames (species, color, gender, name) VALUES ('cat', 'brown', 'male', 'Malcolm')")

def pet_namer(db, species, color, gender, name)
  db.execute("INSERT INTO petnames (species, color, gender, name) VALUES (?, ?, ?, ?)", [species, color, gender, name])
end

5.times do
  pet_namer(db, "cat", Faker::Commerce.color, "male", Faker::Name.first_name)
end

5.times do
  pet_namer(db, "cat", Faker::Commerce.color, "female", Faker::Name.first_name)
end

5.times do
  pet_namer(db, "dog", Faker::Commerce.color, "male", Faker::Name.first_name)
end

5.times do
  pet_namer(db, "dog", Faker::Commerce.color, "female", Faker::Name.first_name)
end

5.times do
  pet_namer(db, "hamster", Faker::Commerce.color, "female", Faker::Name.first_name)
end

5.times do
  pet_namer(db, "hamster", Faker::Commerce.color, "male", Faker::Name.first_name)
end

5.times do
  pet_namer(db, "lizard", Faker::Commerce.color, "male", Faker::Name.first_name)
end

5.times do
  pet_namer(db, "lizard", Faker::Commerce.color, "female", Faker::Name.first_name)
end

puts "Welcome to the PetNamer2000. We'll take the stress out of naming your pet!"
puts "Do you have a 'dog', 'cat', 'hamster', or 'lizard'?"
species = gets.chomp

if species == "cat"
	p db.execute("SELECT * FROM petnames WHERE species='cat';")
elsif species == "dog"
	p db.execute("SELECT * FROM petnames WHERE species='dog';")
elsif species == "hamster"
	p db.execute("SELECT * FROM petnames WHERE species='hamster';")
elsif species == "lizard"
	p db.execute("SELECT * FROM petnames WHERE species='hamster';")
end


#petnames = db.execute("SELECT * FROM petnames")
#petnames.each do |pet|
# p "#{petnames['name']} is a great name for a #{petnames['color']}, #{petnames['gender']}, #{petnames['species']}."
#end
