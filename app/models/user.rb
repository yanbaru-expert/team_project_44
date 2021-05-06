class User < ApplicationRecord
  has_many :reads, dependent: :destroy
  has_many :watches, dependent: :destroy
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
