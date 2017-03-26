class CreateWorkouts < ActiveRecord::Migration[5.0]
  def change
    create_table :workouts do |t|
      t.references :exercise, foreign_key: true
      t.integer :reps
      t.float :weight
      t.datetime :performed_at

      t.timestamps
    end
  end
end
