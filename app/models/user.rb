class User < ApplicationRecord
  has_many :comments
  has_many :ideas
  has_secure_password

  before_validation :downcase_email

  has_and_belongs_to_many :goals, class_name: 'Idea'

  validates :email, uniqueness: true

  private

  def downcase_email
    self.email = email.downcase
  end
end
