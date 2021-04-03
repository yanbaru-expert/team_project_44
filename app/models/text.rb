class Text < ApplicationRecord
  has_many :text_managements, dependent: :destroy
  validates :genre, presence: true
  validates :title, presence: true
  validates :content, presence: true
end
