class Workout < ApplicationRecord
  belongs_to :exercise
  belongs_to :user

  validates :reps, :weight, presence: true
end
