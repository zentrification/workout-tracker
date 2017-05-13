class AddWeightTypeToWorkouts < ActiveRecord::Migration[5.0]
  def change
    add_column :workouts, :weight_type, :string
  end
end
