class CreateRoomIdeas < ActiveRecord::Migration[6.0]
  def change
    create_table :room_ideas do |t|
      t.references :user, null: false, foreign_key: true

      t.string :name, null: false
      t.string :color
      t.integer :width
      t.integer :depth
      t.integer :height
      t.text :image
      t.string :content

      t.timestamps
    end
  end
end
