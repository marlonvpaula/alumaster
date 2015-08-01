class CreateOrcamento < ActiveRecord::Migration
  def change
    create_table :orcamentos do |t|
      t.references :cliente
      t.references :vendedor

      t.decimal :margem
      t.decimal :total
      t.decimal :desconto

      t.timestamps
    end
  end
end
