# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Gonflable.destroy_all
User.destroy_all

puts "Created #{Gonflable.count} inflatable games"

  User.create!(first_name: "Toutou", last_name: "dupont", email: "toutou@gmail.com", password: "azerty1")

  User.create!(first_name: "Tonton", last_name: "dupont", email: "tonton@gmail.com", password: "azerty2")

  User.create!(first_name: "Jojo", last_name: "dupont", email: "jojo@gmail.com", password: "azerty3")

  User.create!(first_name: "titou", last_name: "dupont", email: "titou@gmail.com", password: "azerty4")

  User.create!(first_name: "Mimi", last_name: "dupont", email: "mimi@gmail.com", password: "azerty5")

users = User.all

user_id = users.map do |user|
  user.id
end

20.times do
  Gonflable.create!(name: Faker::Name.name, content: Faker::Lorem.paragraph, price: rand(100..500), user_id: user_id.sample)
end

puts "#{Gonflable.count} Inflatable games are created"
