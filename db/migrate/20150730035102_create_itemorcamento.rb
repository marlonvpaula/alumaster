class CreateItemorcamento < ActiveRecord::Migration
  def change
    create_table :itemorcamentos do |t|
      t.references :orcamento
      t.references :item

      t.decimal :largura
      t.decimal :altura

      t.integer :quantidade
      t.decimal :valorunitario
      t.decimal :valortotal

      t.decimal :margem
      t.text :observacaocliente

      t.timestamps
    end
  end
end
