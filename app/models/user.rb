class User < ApplicationRecord
  has_secure_password

  has_many :favorites
  has_many :comments
  has_many :restaurants, through: :favorites
  has_many :restaurants, through: :comments
  

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :username, presence: true
  validates :username, uniqueness: true
  validates :email, presence: true, uniqueness: true, format: {with: /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i, message: "Invalid Format."}

  def name
    self.first_name + " " + self.last_name
  end

end
