class Pin < ApplicationRecord
  #Permet de dire à la class qu'elle appartient à la class user
  belongs_to :user
end
