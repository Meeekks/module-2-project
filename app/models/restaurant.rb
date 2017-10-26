class Restaurant < ApplicationRecord
  has_many :favorites
  has_many :comments
  has_many :users, through: :favorites
  has_many :users, through: :comments

  # validates :name, presence: true, uniqueness: true
  # validates :address, presence: true, uniqueness: true

end
