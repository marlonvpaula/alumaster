class AddCidadeClientes < ActiveRecord::Migration
  def change
  	add_column :clientes, :cidade, :string
  	add_column :clientes, :estado, :string
  end
end
