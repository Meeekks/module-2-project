class CreateRestaurants < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.float :rating
      t.string :img_url
      t.float :longitude
      t.float :latitude

      t.timestamps
    end
  end
end
