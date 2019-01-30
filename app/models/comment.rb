class Comment < ApplicationRecord
  #permet de dire a la class qu'elle appartient à la table user, pin
  belongs_to :user
  belongs_to :pin
end
