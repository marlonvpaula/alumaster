class CreatePerfil < ActiveRecord::Migration
  def change
    create_table :perfils do |t|
    	t.string :descricao

    	t.timestamps
    end
  end
end
