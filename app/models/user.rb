class User < ApplicationRecord
  has_many :reads, dependent: :destroy
  has_many :read_texts, through: :reads, source: :text
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
