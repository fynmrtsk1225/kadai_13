class ChangeColumnsAddNotnullOnProfiles < ActiveRecord::Migration[6.0]
  def change
    change_column_null :profiles, :image, false
  end
end
