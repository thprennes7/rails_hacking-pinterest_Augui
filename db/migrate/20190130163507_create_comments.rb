class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      #Création de nos colonnes
      t.string :content
      #Permet de dire a lier a la class user, pin et lui dire qu'elle lui appartient
      t.belongs_to :user, index: true
      t.belongs_to :pin, index: true
      #Creation d'une colonnes qui nous dit la date de creation et des mise a jours
      t.timestamps
    end
  end
end
