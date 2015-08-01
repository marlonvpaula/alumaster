class CreateItemvariavel < ActiveRecord::Migration
  def change
    create_table :itempvariavels do |t|
      t.references :item
      t.references :variavel
      t.integer :quantidade

      t.timestamps
    end
  end
end
