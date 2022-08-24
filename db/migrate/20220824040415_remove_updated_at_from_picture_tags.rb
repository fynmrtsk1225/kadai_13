class RemoveUpdatedAtFromPictureTags < ActiveRecord::Migration[6.0]
  def change
    remove_column :picture_tags, :updated_at, :datetime
  end
end
