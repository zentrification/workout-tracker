class Exercise < ApplicationRecord
  has_many :workouts

  validates :name, presence: true, uniqueness: { case_sensitive: false }

  default_scope { order(:name) }
end
