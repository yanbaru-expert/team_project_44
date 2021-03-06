class Question < ApplicationRecord
  validates :genre, presence: true
  validates :title, presence: true
  validates :content, presence: true
  validates :answer, presence: true
end