class AddServicosToClientes < ActiveRecord::Migration
  def change
  	add_column :clientes, :servicos, :text
  end
end
