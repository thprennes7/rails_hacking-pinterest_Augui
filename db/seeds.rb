# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Comment.destroy_all
Pin.destroy_all
User.destroy_all

5.times do
  User.create!(name: Faker::Name.name)
  5.times do
    Pin.create!(url: Faker::Internet.url('example.com'), user_id: User.last.id)
  end
end

5.times do |index|
  Comment.create!(content: Faker::ChuckNorris.fact, user_id: (User.first.id.to_i + index), pin_id: (Pin.first.id.to_i + rand(24)))
end
