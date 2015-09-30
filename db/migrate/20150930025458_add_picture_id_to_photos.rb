class AddPictureIdToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :picture_id, :string
  end
end
