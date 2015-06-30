class CreateCliente < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
    	t.boolean :tpFisica, default: true
    	t.string :nome
    	t.string :fantasia
    	t.string :fone
    	t.string :celular
    	t.string :cep
    	t.string :endereco
    	t.integer :numero
    	t.string :complemento
    	t.string :bairro
    	t.string :cpfcnpj
    	t.string :rginsc
    	t.date :nascimento
    	t.string :email
    	t.text :observacao
    	t.boolean :ativo, default: true

    	t.timestamps
    end
  end
end
