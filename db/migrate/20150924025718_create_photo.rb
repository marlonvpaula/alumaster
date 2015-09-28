class CreatePhoto < ActiveRecord::Migration
  def change
  	create_table :photos do |t|
	  	t.references :portfolio

	  	t.timestamps
	end
  end
end
