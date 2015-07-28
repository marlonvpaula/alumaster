class CreateVariavel < ActiveRecord::Migration
  def change
    create_table :variavels do |t|
    	t.string :descricao

    	t.timestamps
    end
  end
end
