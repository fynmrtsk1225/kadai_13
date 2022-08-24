class ChangeColumnsAddNotnullOnProfiles2 < ActiveRecord::Migration[6.0]
  def change
    change_column :profiles, :image, :text, null: false
  end
end
