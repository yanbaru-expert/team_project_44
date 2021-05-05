class Text < ApplicationRecord
  has_many :reads, dependent: :destroy
  has_many :posts, dependent: :destroy
  has_many :posted_movies, through: :posts, source: :movie

  validates :genre, presence: true
  validates :title, presence: true
  validates :content, presence: true

  def read_by?(user)
    reads.find_by(user_id: user.id).present?
  end
end
