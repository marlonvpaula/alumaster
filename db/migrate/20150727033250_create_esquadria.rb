class CreateEsquadria < ActiveRecord::Migration
  def change
    create_table :esquadria do |t|
    	t.string :descricao

    	t.timestamps
    end
  end
end
