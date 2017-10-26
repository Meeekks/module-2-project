class AddColumnsToRestaurant < ActiveRecord::Migration[5.1]
  def change
    add_column :restaurants, :image_url, :string
    add_column :restaurants, :url, :string
    add_column :restaurants, :categories, :string
    add_column :restaurants, :phone, :string
  end
end
