class CreateItemacessorio < ActiveRecord::Migration
  def change
    create_table :itemacessorios do |t|
      t.references :item
      t.references :acessorio
      t.integer :quantidade

      t.timestamps
    end
  end
end
