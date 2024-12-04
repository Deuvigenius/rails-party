# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require "open-uri"

User.destroy_all
Gonflable.destroy_all

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



file_gonflable_1 = URI.parse("https://static.wixstatic.com/media/c9beaa_f3fc4b984e7b4edaa215952cbfe62e2d.jpg").open
gonflable1 = Gonflable.all[0].photo.attach(io: file_gonflable_1, filename: "gonflable-1", content_type: "image/jpg")

file_gonflable_2 = URI.parse("https://location-chateaux-gonflables.be/wp-content/uploads/2020/01/chateau-gonflable-lion-2-scaled.jpg").open
gonflable1 = Gonflable.all[1].photo.attachh(io: file_gonflable_2, filename: "gonflable-2", content_type: "image/jpg")

file_gonflable_3 = URI.parse("https://i1.wp.com/chateau-gonflable.org/wp-content/uploads/2017/10/IMG_9583.jpg?fit=960%2C640").open
gonflable1 = Gonflable.all[2].photo.attach(io: file_gonflable_3, filename: "gonflable-3", content_type: "image/png")

file_gonflable_4 = URI.parse("https://www.jumpmania.be/media/products/chateau-gonflable-crocodile-ouvert1.jpg").open
gonflable1 = Gonflable.all[3].photo.attach(io: file_gonflable_4, filename: "gonflable-4", content_type: "image/jpg")

file_gonflable_5 = URI.parse("https://www.du-bout-des-yeux.com/wp-content/uploads/2022/06/parcours-u.jpg").open
gonflable1 = Gonflable.all[4].photo.attach(io: file_gonflable_5, filename: "gonflable-5", content_type: "image/jpg")

file_gonflable_6 = URI.parse("https://www.fungonflables.ch/wp-content/uploads/2018/11/Shark-Run-Luftschloss-Schweiz-Vermietung.jpg").open
gonflable1 = Gonflable.all[5].photo.attach(io: file_gonflable_6, filename: "gonflable-6", content_type: "image/jpg")

file_gonflable_7 = URI.parse("https://tse1.mm.bing.net/th?id=OIP.3GN7kBuAFgakmjTSDMUDcQHaF4&pid=Api&P=0&h=180").open
gonflable1 = Gonflable.all[6].photo.attach(io: file_gonflable_7, filename: "gonflable-7", content_type: "image/png")

file_gonflable_8 = URI.parse("https://www.jumpmania.be/media/products/chateau-gonflable-crocodile-ouvert2.jpg").open
gonflable1 = Gonflable.all[7].photo.attach(io: file_gonflable_8, filename: "gonflable-8", content_type: "image/jpg")

file_gonflable_9 = URI.parse("https://location-chateaux-gonflables.be/wp-content/uploads/2019/10/petits-chateaux-gonflables-trex.jpg").open
gonflable1 = Gonflable.all[8].photo.attach(io: file_gonflable_9, filename: "gonflable-9", content_type: "image/jpg")

file_gonflable_10 = URI.parse("https://tse1.mm.bing.net/th?id=OIP.bImX3iv5HbjOilY41W-w7wHaEH&pid=Api&P=0&h=180").open
gonflable1 = Gonflable.all[9].photo.attach(io: file_gonflable_10, filename: "gonflable-10", content_type: "image/jpg")

file_gonflable_11 = URI.parse("https://planet-events.be/wp-content/uploads/2015/12/Photo-chateau.jpg").open
gonflable1 = Gonflable.all[10].photo.attach(io: file_gonflable_11, filename: "gonflable-11", content_type: "image/jpg")

file_gonflable_12 = URI.parse("https://www.star-anim.com/wp-content/uploads/2015/09/chateaux-gonflables-mickey.jpg").open
gonflable1 = Gonflable.all[11].photo.attach(io: file_gonflable_12, filename: "gonflable-12", content_type: "image/jpg")

file_gonflable_13 = URI.parse("https://chateaux-gonflables.ch/wp-content/uploads/2016/04/Ch%C3%A2teau-gonflable-Toboggan-01-1.jpg").open
gonflable1 = Gonflable.all[12].photo.attach(io: file_gonflable_13, filename: "gonflable-13", content_type: "image/jpg")

file_gonflable_14 = URI.parse("https://tse2.mm.bing.net/th?id=OIP.D56xABGHSxtY3GjMIksiSQHaFh&pid=Api&P=0&h=180").open
gonflable1 = Gonflable.all[13].photo.attach(io: file_gonflable_14, filename: "gonflable-14", content_type: "image/png")

file_gonflable_15 = URI.parse("https://www.moleson.ch/wp-content/uploads/chateaux_gonflables_new3.jpg").open
gonflable1 = Gonflable.all[14].photo.attach(io: file_gonflable_15, filename: "gonflable-15", content_type: "image/jpg")

file_gonflable_16 = URI.parse("https://www.moleson.ch/wp-content/uploads/chateaux_gonflables_6.jpg").open
gonflable1 = Gonflable.all[15].photo.attach(io: file_gonflable_16, filename: "gonflable-16", content_type: "image/jpg")

file_gonflable_17 = URI.parse("https://location-chateaux-gonflables.be/wp-content/uploads/2022/06/location-chateau-gonflable-1024x797.jpg").open
gonflable1 = Gonflable.all[16].photo.attach(io: file_gonflable_17, filename: "gonflable-17", content_type: "image/jpg")

file_gonflable_18 = URI.parse("https://i2.wp.com/chateau-gonflable.org/wp-content/uploads/2017/10/IMG_9579.jpg?fit=940%2C652").open
gonflable1 = Gonflable.all[17].photo.attach(io: file_gonflable_18, filename: "gonflable-18", content_type: "image/png")

file_gonflable_19 = URI.parse("https://atomax-events.be/wp-content/uploads/rentman/chateau-gonflable-jungle-846.jpg").open
gonflable1 = Gonflable.all[18].photo.attach(io: file_gonflable_19, filename: "gonflable-19", content_type: "image/jpg")

file_gonflable_20 = URI.parse("https://m.media-amazon.com/images/I/A16xP2uEPHL.jpg").open
gonflable1 = Gonflable.all[19].photo.attach(io: file_gonflable_20, filename: "gonflable-20", content_type: "image/jpg")







# <div class="container">
#   <%= simple_form_for(@gonflable) do |f| %>
#     <%= f.input :name %>
#     <%= f.input :content %>
#     <%= f.input :price %>
#     <%= f.input :photo, as: :file %>
#     <%= f.button :submit %>
#   <% end %>
# </div>
