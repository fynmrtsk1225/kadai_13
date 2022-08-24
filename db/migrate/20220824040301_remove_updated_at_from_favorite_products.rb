class RemoveUpdatedAtFromFavoriteProducts < ActiveRecord::Migration[6.0]
  def change
    remove_column :favorite_products, :updated_at, :datetime
  end
end
