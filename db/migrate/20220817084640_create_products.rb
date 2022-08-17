class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.references :picture, null: false, foreign_key: true
      t.string :name, null: false
      t.text :product_url, null: false
      t.text :image_url
      t.text :image

      t.timestamps
    end
  end
end
