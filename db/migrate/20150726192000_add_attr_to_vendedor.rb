class AddAttrToVendedor < ActiveRecord::Migration
  def change
    add_column :vendedors, :email, :string, null: false, default: ""
  end
end
