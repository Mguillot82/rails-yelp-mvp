# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
CATEGORIES = %w[chinese italian japanese french belgian]

Restaurant.destroy_all
10.times do
  restaurant = Restaurant.new(name: Faker::Name::initials(number: 3), address: Faker::Address.full_address, category: CATEGORIES.sample)
  restaurant.save
end

5.times do
  review = Review.new(content: Faker::GreekPhilosophers.quote, rating: rand(5), restaurant_id: %w(41 42 43 44 46 47 48 49))
  review.save
end
