class Idea < ApplicationRecord
  validates :title, presence: true
  validates :title, length: { maximum: 75 }

  has_many :comments

  def self.search(search_term)
    where('title LIKE ?', "%#{search_term}%") | where('description LIKE ?', "%#{search_term}%")
  end

  def self.most_recent()
    Idea.all.order(created_at: :desc).limit(3)
  end

end
