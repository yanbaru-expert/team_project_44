class Text < ApplicationRecord
  belongs_to :user
  has_many :reads, dependent: :destroy
  has_many :read_users, through: :reads, source: :user

  validates :genre, presence: true
  validates :title, presence: true
  validates :content, presence: true
end
