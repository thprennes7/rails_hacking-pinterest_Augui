class User < ApplicationRecord
  #Permet de dire a la class qu'elle a plusieurs pins, comments
  has_many :pins
  has_many :comments
end
