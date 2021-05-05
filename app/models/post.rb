class Post < ApplicationRecord
  belongs_to :text
  belongs_to :movie
  validates :text_id, uniqueness: {
    scope: :movie_id,
  }
end
