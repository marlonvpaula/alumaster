class CreateVendedor < ActiveRecord::Migration
  def change
    create_table :vendedors do |t|
    	t.string :nome
    	t.string :celular
    	t.string :endereco
    	t.boolean :ativo, default: true

    	t.timestamps
    end
  end
end
