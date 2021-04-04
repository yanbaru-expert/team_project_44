class Text < ApplicationRecord
  has_many :read_texts, dependent: :destroy
  has_many :studied_users, through: :read_texts, source: :user
  validates :genre, presence: true
  validates :title, presence: true
  validates :content, presence: true

  def text_read_by?(user)
    read_texts.find_by(user_id: user.id).present?
  end
end
