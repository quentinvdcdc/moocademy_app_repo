# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

#10.times do
#	course = Course.create!(title: Faker::Hobbit.character, description: Faker::Hobbit.quote)
#end

50.times do
	lesson = Lesson.create!(title: Faker::StarWars.character, body: Faker::StarWars.wookiee_sentence, course_id: rand(1..10))
end

25.times do
	user = User.create!(name: Faker::Artist.name, course_id: rand(1..10))
end
