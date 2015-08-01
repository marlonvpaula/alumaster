class CreateItemperfil < ActiveRecord::Migration
  def change
    create_table :itemperfils do |t|
      t.references :item
      t.references :perfil
      t.integer :quantidade

      t.timestamps
    end
  end
end
