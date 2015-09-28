class CreateCliente < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
    	t.string :nome
    	t.string :fone
    	t.string :celular
    	t.string :cep
    	t.string :endereco
    	t.integer :numero
    	t.string :complemento
    	t.string :bairro
    	t.string :email
    	t.string :sobrempresa

    	t.timestamps
    end
  end
end
