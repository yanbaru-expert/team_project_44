class User < ApplicationRecord
  has_many :text_managements, dependent: :destroy
  has_many :studied_texts, through: :text_managements, source: :text
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
