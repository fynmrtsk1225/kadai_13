class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.text :image
      t.string :content
      t.integer :age
      t.string :constitution
      t.string :floor
      t.integer :square
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
