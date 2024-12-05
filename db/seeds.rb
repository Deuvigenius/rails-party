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
require "faker"

User.destroy_all
Gonflable.destroy_all

puts "Created #{Gonflable.count} inflatable games"

  User.create!(first_name: "Toutou", last_name: "dupont", email: "toutou@gmail.com", password: "azerty1")
  file_user_1 = URI.parse("https://png.pngtree.com/png-clipart/20230927/original/pngtree-man-avatar-image-for-profile-png-image_13001877.png").open
  user1 = User.all[0].photo.attach(io: file_user_1, filename: "user-1", content_type: "image/png")

  User.create!(first_name: "Tonton", last_name: "dupont", email: "tonton@gmail.com", password: "azerty2")
  file_user_2 = URI.parse("https://www.gtanf.com/forums/uploads/monthly_2018_12/avatar-artwork.thumb.jpg.52347ce581c909bdd8487ce4fc53fc95.jpg").open
  user2 = User.all[1].photo.attach(io: file_user_2, filename: "user-2", content_type: "image/jpg")

  User.create!(first_name: "Jojo", last_name: "dupont", email: "jojo@gmail.com", password: "azerty3")
  file_user_3 = URI.parse("https://avatarfiles.alphacoders.com/328/328295.png").open
  user3 = User.all[2].photo.attach(io: file_user_3, filename: "user-3", content_type: "image/png")

  User.create!(first_name: "titou", last_name: "dupont", email: "titou@gmail.com", password: "azerty4")
  file_user_4 = URI.parse("https://www.gta-growth.com/secciones/gtav/descargas/avatares/v_simeon_art_256.jpg").open
  user4 = User.all[3].photo.attach(io: file_user_4, filename: "user-4", content_type: "image/jpg")

  User.create!(first_name: "Mimi", last_name: "dupont", email: "mimi@gmail.com", password: "azerty5")
  file_user_5 = URI.parse("https://img.freepik.com/free-photo/androgynous-avatar-non-binary-queer-person_23-2151100183.jpg").open
  user5 = User.all[4].photo.attach(io: file_user_5, filename: "user-5", content_type: "image/jpg")

users = User.all

user_id = users.map do |user|
  user.id
end

address = ["14 Rue Sainte, 13001 Marseille", "12 Rue Marguerite Desnuelle, 13010 Marseille", "30 Avenue de la Capelette, 13010 Marseille", "200 Avenue du Prado, 13008 Marseille", "100 Boulevard Michelet, 13008 Marseille", "10 Rue Bouronne, 13600 La Ciotat", "40 Avenue Jules Ferry, 13600 La Ciotat", "50 Boulevard de Louvain, 13008 Marseille"]

20.times do
  Gonflable.create!(name: Faker::Name.name, content: Faker::Lorem.paragraph, price: rand(100..500), user_id: user_id.sample, address: address.sample)
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


