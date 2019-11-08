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
User.create(
	first_name: "Thibault",
	last_name: "Guichard",
	description: "Semi-professionnel en AquaPoneyBall j'organise des tournois de bilboquet",
	email: "tguichard8@hotmail.com",
	password:"password"
)
puts 'User created'

3.times do
Event.create(
	start_date: Faker::Date.forward(days: 365),
	duration: rand(6..100)*5,
	administrator_id: User.all.sample.id,	
	price: rand(5..1000),
	description:Faker::Lorem.paragraph,
	title: Faker::Movies::StarWars.quote,
	location: Faker::Address.city
	)
end
puts 'Events de adminitrator created'


30.times do
	Event.create(
		start_date: Faker::Date.forward(days: 365),
		duration: rand(6..100)*5,
		administrator_id: User.all.sample.id,
		price: rand(5..1000),
		description:Faker::Lorem.paragraph,
		title: Faker::Movies::StarWars.quote,
		location: Faker::Address.city
		)
end
puts 'The database has now #{Event.count} events'