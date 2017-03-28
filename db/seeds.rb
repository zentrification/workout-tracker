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
  'bent over rows',
  'calf raise',
  'chinup',
  'cuban press',
  'dips',
  'deadlift',
  'external rotation',
  'face pulls',
  'incline press',
  'lateral raise',
  'lunges',
  'overhead press',
  'pushup',
  'pullup',
  'reverse fly',
  'rows',
  'shoulder press',
  'squat',
  'stiff leg deadlift',
].each do |exercise|
  Exercise.create(name: exercise)
end
