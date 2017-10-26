class Favorite < ApplicationRecord
  belongs_to :restaurant
  belongs_to :user

  validates :restaurant, uniqueness: true
end
