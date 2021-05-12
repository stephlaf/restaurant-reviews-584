puts "Cleaning the DB..."
Restaurant.destroy_all

puts "Creating 100 restaurants..."

100.times do
  restaurant = Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    rating: rand(1..5)
  )
  puts "Restaurant #{restaurant.id} was created"
end

puts "All done!"
