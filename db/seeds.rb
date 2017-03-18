# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

[
  'ab wheel',
  'bench press',
  'calf raise',
  'chinups',
  'cuban press',
  'dips',
  'deadlift',
  'external rotation',
  'incline press',
  'lateral raises',
  'lunges',
  'overhead press',
  'pushups',
  'pullups',
  'rows',
  'squat',
].each do |exercise|
  Exercise.create(name: exercise)
end

[1,2,3,5,7,8,9,11].each do |days_ago|
  rand(10).times do
    Workout.create(
      exercise: Exercise.all.sample,
      performed_at: days_ago.days.ago,
      reps: rand(12),
      weight: [25,50,75,100].sample
    )
  end
end
