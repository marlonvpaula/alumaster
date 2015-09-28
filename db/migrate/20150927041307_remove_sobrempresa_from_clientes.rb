class RemoveSobrempresaFromClientes < ActiveRecord::Migration
  def change
  	remove_column :clientes, :sobrempresa, :string
  end
end
