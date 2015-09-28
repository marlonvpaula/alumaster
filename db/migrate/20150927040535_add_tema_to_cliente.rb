class AddTemaToCliente < ActiveRecord::Migration
  def change
    add_column :clientes, :tema, :string
  end
end
