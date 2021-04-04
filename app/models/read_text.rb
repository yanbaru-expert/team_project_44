class ReadText < ApplicationRecord
  belongs_to :user
  belongs_to :text
  validates :user_id, uniqueness: {
    scope: :text_id,
    message: "は同じテキストに2回以上読破済みにはできません"
  }
end
