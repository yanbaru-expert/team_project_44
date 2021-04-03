class Text < ApplicationRecord
  has_many :text_managements, dependent: :destroy
  has_many :studied_users, through: :text_managements, source: :user
  validates :genre, presence: true
  validates :title, presence: true
  validates :content, presence: true

  def text_studied_by?(user)
    text_managements.find_by(user_id: user.id).present?
  end
end
