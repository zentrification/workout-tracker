class Workout < ApplicationRecord
  belongs_to :exercise
  belongs_to :user

  validates :reps,   presence: true
  validates :weight, presence: true, unless: Proc.new { |x| x.weight_type == 'Bodyweight' }
end
