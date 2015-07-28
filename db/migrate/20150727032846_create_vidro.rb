class CreateVidro < ActiveRecord::Migration
  def change
    create_table :vidros do |t|
    	t.string :descricao

    	t.timestamps
    end
  end
end
