class RemoveImgUrlFromRestaurants < ActiveRecord::Migration[5.1]
  def change
    remove_column :restaurants, :img_url, :string
  end
end
