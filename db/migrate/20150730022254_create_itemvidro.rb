class CreateItemvidro < ActiveRecord::Migration
  def change
    create_table :itemvidros do |t|
      t.references :item
      t.references :vidro
      t.integer :quantidade

      t.timestamps
    end
  end
end
