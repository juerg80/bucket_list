class User < ApplicationRecord
  has_many :comments
  has_many :ideas
  has_secure_password

  has_and_belongs_to_many :goals, class_name: 'Idea'

  validates :email, uniqueness: true  
end
