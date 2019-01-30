# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

#Remet la base de donné à 0
Comment.destroy_all
Pin.destroy_all
User.destroy_all

#Boucle pour faire des fake random
5.times do
  #Random d'user
  User.create!(name: Faker::Name.name)
  5.times do
    #Random de pin
    Pin.create!(url: Faker::Internet.url('example.com'), user_id: User.last.id)
  end
end

5.times do |index|
  #Random de comment
  Comment.create!(content: Faker::ChuckNorris.fact, user_id: (User.first.id.to_i + index), pin_id: (Pin.first.id.to_i + rand(24)))
end
