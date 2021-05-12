class Movie < ApplicationRecord
  has_many :watches, dependent: :destroy

  validates :genre, presence: true
  validates :title, presence: true
  validates :url, presence: true

  def watch_by?(user)
    watches.find_by(user_id: user.id).present?
  end
end
