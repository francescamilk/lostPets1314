puts "Cleaning db..."
Pet.destroy_all

puts "Creating pets..."
Pet.create!(breed: "cat", color: "orange")
Pet.create!(breed: "cat", color: "white")

puts "Done!"