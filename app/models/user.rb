class User < ApplicationRecord
  has_many :favorites
  has_many :comments
  has_many :restaurants, through: :favorites 
  has_many :restaurants, through: :comments
  has_secure_password
end
