class ChangeColumnsAddNotnullOnPictures < ActiveRecord::Migration[6.0]
  def change
    change_column_null :pictures, :image, false
  end
end
