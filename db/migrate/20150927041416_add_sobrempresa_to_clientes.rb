class AddSobrempresaToClientes < ActiveRecord::Migration
  def change
  	add_column :clientes, :sobrempresa, :text
  end
end
