class User < ApplicationRecord
  has_many :read_texts, dependent: :destroy
  has_many :studied_texts, through: :read_texts, source: :text
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
