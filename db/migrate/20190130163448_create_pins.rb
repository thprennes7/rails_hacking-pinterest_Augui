class CreatePins < ActiveRecord::Migration[5.2]
  def change
    create_table :pins do |t|
      #Création de nos colonnes
      t.string :url
      #Permet de lier a la table user et lui dire qu'elle lui appartient
      t.belongs_to :user, index: true
      #Creation d'une colonnes qui nous dit la date de creation et des mise a jours
      t.timestamps
    end
  end
end
