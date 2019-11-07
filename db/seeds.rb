# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
p "---------- START CLEAN THE DATABASE ----------"
User.destroy_all
p "Users are clean"
Event.destroy_all
p "Events are clean"
#Attendance.destroy_all
#p "Attendances are clean"
p "---------- END CLEAN THE DATABASE ----------"
p ""
p ""
p "---------------- START SEED ----------------"
p ""
​
User.create(
	first_name: Faker::Name.first_name,
	last_name:Faker::Name.last_name,
	description:Faker::Lorem.paragraph,
	email: "jean@yopmail.com",
	password:"password"
)
​
puts 'User created'
​
20.times do
	Event.create(
		start_date: Faker::Date.forward(days: 365),
		duration: rand(6..100)*5,
		admin_id: User.all.sample.id,
		price: rand(5..1000),
		description:Faker::Lorem.paragraph,
		title: Faker::Movies::StarWars.quote,
		location: Faker::Address.city
		)
end
​
puts 'The database has now #{Event.count} events'