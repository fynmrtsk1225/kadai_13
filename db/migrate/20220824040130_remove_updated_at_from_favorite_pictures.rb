class RemoveUpdatedAtFromFavoritePictures < ActiveRecord::Migration[6.0]
  def change
    remove_column :favorite_pictures, :updated_at, :datetime
  end
end
