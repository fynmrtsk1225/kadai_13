class RemoveUpdatedAtRelationships < ActiveRecord::Migration[6.0]
  def change
    remove_column :relationships, :updated_at, :datetime
  end
end
