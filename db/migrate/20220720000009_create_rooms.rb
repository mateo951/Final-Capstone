class CreateRooms < ActiveRecord::Migration[7.0]
  def change
    create_table :rooms do |t|
      t.string :name
      t.string :image_url
      t.integer :price
      t.text :description
      t.integer :surface

      t.timestamps
    end
  end
end
